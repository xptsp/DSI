1.  SYNOPSIS

	CabLite is a light-weight and easy-to-use library to interface with the
	otherwise unwieldy cabinet.dll to provide fast and efficient cabinet
	compression/decompression support.

2.  LIMITATIONS AND NOTES

	* Microsoft's cabinet format does not support Unicode; all of the strings
	  used by CabLite.dll are 8-bit ANSI strings, NOT wide Unicode strings.
	* The maximum number of files in a cabinet is 65535 (0xFFFF).
	* Cabinets larger than 2GB (0x7FFFFFFF) in size are not supported.

3.  USAGE // COMPRESSION

	CabLite.dll exports two general-use compression functions:

	DWORD WINAPI CabFile(          // RETURN: 32-bit return code (see documentation)
	    LPCSTR lpszFileName,       // path to source file
	    LPCSTR lpszCabName         // [optional] path to output cabinet
	);

	DWORD WINAPI CabDirectory(     // RETURN: 32-bit return code (see documentation)
	    LPCSTR lpszDirectoryName,  // path to source directory
	    LPCSTR lpszCabName,        // [optional] path to output cabinet
	    PFNCABDIRECTORYSTATUSCALLBACK pfnCabDirectoryStatusCallback // [optional]
	);

	AUTOMATIC CABINET NAMES: If NULL or an empty string is passed for
	lpszCabName, the name of the output cabinet will be automatically generated.
	For CabFile, this will be an underscore name; e.g., C:\foo\bar.txt will be
	cabbed to C:\foo\bar.tx_.  For CabDirectory, this will be a .cab name; e.g.,
	the C:\foo\bar directory will be cabbed to C:\foo\bar.cab.

	STATUS CALLBACK: The optional status callback function will allow the
	calling application to keep track of the progress of the cabbing process;
	this callback function is optional, and can be omitted by passing NULL.

	In C, the callback function should be declared like so:

	void CALLBACK CabDirStatus(LPCSTR lpszCurrentFile,
	                           WORD wCompletedFiles,
	                           WORD wTotalFiles)
	{
		// etc.
	}

	The first parameter is the name of the file that is about to be compressed.
	The second parameter is the number of files in the tree that have been
	processed, and the third parameter is the total number of files in the tree.
	If lpszCurrentFile is an empty string, then CabLite has completed
	compression and is about to write the cabinet to disk.

	/**
	 * CabFile and CabDirectory return a DWORD (UINT32) code
	 *
	 * The low word holds status information, and the high word holds the number
	 * of files successfully added.
	 *
	 * Bit     00: 1=success, 0=error
	 * Bit     01: 1=dir_count_mismatch, 0=normal
	 * Bits 02-05: extended status (4-bit unsigned nybble)
	 * Bits 06-15: reserved
	 * Bits 16-31: number of files added
	 *
	 * dir_count_mismatch bit: This bit (b1) is set if CabDirectory was called and
	 *                         the number of added files does not match the number
	 *                         that was expected; this could be the result of
	 *                         unreadable files or of external changes to the
	 *                         directory during the cabbing operation.
	 *
	 * Extended status codes if b0=1 (success):
	 * 0: normal return
	 *
	 * Extended status codes if b0=0 (error):
	 * 0: initialization error
	 * 1: cab creation error
	 * 2: cleanup error
	 *
	 * Remember that the extended status codes should be shifted by two bits!
	 **/

4.  USAGE // DECOMPRESSION

	CabLite.dll exports one decompression function:

	WORD WINAPI CabExtract(        // RETURN: number of files extracted
	    LPCSTR lpszCabName,        // path to the cabinet to decompress
	    LPCSTR lpszOutputPath,     // [optional] path to place extracted files
	    PFNCABEXTRACTSTATUSCALLBACK pfnCabExtractStatusCallback // [optional]
	);

	NOTE: If lpszOutputPath is NULL or an empty string, the output path will
	be set automatically; for underscore cabs or for cabs with no file
	extension, this will result in the extracted files being placed in the same
	path as the cabinet, and for all other cabs, the extracted files will be
	placed in a folder bearing the name of the cabinet.  For example, using the
	automatically-generated output path, C:\foo\bar.tx_ will extract to C:\foo\*
	and C:\foo\bar.cab will extract to C:\foo\bar\*

	STATUS CALLBACK: The optional status callback function will allow the
	calling application to keep track of the progress of the extraction process;
	this callback function is optional, and can be omitted by passing NULL.

	In C, the callback function should be declared like so:

	void CALLBACK CabExtStatus(LPCSTR lpszCurrentFile,
	                           WORD wExtractedFiles,
	                           WORD wAction)
	{
		// etc.
	}

	The first parameter is the name of the file currently being worked on.
	The second parameter is the number of files in the tree that have been
	successfully extracted, and the final parameter is a number indicating the
	status of the current file (the file in the first parameter).  The following
	action/status codes are defined by CabLite.h:
	#define CABLITE_EXTRACTION_ACTION_SKIPPING  0  // cannot create/open output file
	#define CABLITE_EXTRACTION_ACTION_STARTING  1  // starting extraction
	#define CABLITE_EXTRACTION_ACTION_FINISHED  2  // file extracted and written

5.  USAGE // ASYNCHRONOUS OPERATION

	CabLite provides asynchronous versions of the three main functions:
	CabFileAsync, CabDirectoryAsync, and CabExtractAsync.

	These functions will create a new thread in which they will do their work.
	The handle to this thread will be returned, and it is up to the caller to
	check the status of the thread (WaitForSingleObject).  Use GetExitCodeThread
	to get the function's normal return value.  The caller should also call
	CloseHandle on the thread handle after it is no longer needed.

	The asynchronous functions have an extra (optional) parameter for function
	to be called after the thread has completed its work and right before the
	thread exits; this provides a way for the thread itself to perform any last
	actions (such as updating the UI) prior to terminating.  In C, this callback
	should look something like this:

	void CALLBACK CabThreadDone( DWORD dwResult, LPCSTR lpszInput ) {
		// - dwResult is the result of the operation, and is identical to what
		//   the normal function would have returned
		// - lpszInput is the first argument that was passed to the function;
		//   it is the name of the input file/directory/cabinet
	}

	NOTE: On modern systems, extraction is usually disk-limited, not CPU-
	limited; as a result, running multiple extraction threads at once may
	actually decrease performance by causing the disk to thrash.

6.  USAGE // ADVANCED COMPRESSION (MANUAL MODE)

	CabLite.dll provides three "manual mode" compression functions that affords
	the calling application greater control over the order and placement of the
	files in the cabinet.

	HCABLITE WINAPI CabStart(      // RETURN: handle for CabAdd/CabFinish; NULL=fail
	    LPCSTR lpszCabName,        // path to the cabinet to create
	    USHORT uSolidBlockSizeInMB // [optional] solid block size, in MB
	);

	WORD WINAPI CabAdd(            // RETURN: number of files added
	    HCABLITE hCabLite,         // handle obtained from CabStart
	    LPCSTR lpszSourceName,     // path to source file/directory
	    LPCSTR lpszDestName        // [optional] name to store in the cabinet
	);

	WORD WINAPI CabAddStepInit(    // RETURN: number of files for CabAddStep
	    HCABLITE hCabLite,         // handle obtained from CabStart
	    LPCSTR lpszDirectoryName,  // path to source directory
	    LPCSTR lpszDestName        // [optional] name to store in the cabinet
	);

	WORD WINAPI CabAddStep(        // RETURN: number of files added
	    HCABLITE hCabLite,         // handle obtained from CabStart
	    WORD wIndex                // index to add; get max index from CabAddStepInit
	);

	BOOL WINAPI CabFinish(         // RETURN: was the cabinet successfully created?
	    HCABLITE hCabLite          // handle obtained from CabStart
	);

	USAGE: Call CabStart to obtain a compression handle, and with that handle,
	call CabAdd as many times as needed to build the cabinet, and finally, call
	CabFinish to write the cabinet to disk and clean up.

	SOLID BLOCK SIZE: Larger solid block sizes tend to compress better (though
	after a certain point, there is little or no advantage to larger block
	sizes).  The larger the block size, the slower random-access decompression
	will be (although sequential-access decompression will be unaffected).  The
	CabDirectory function uses a solid block size of 8MB.  If the solid block
	size is set to 0, then the MAXIMUM size will be used.

	DESTINATION NAME: If this is set to NULL or an empty string, then files
	will be placed in the root of the cabinet under their original names and
	the contents of directories will be placed in the root of the cabinet
	(subdirectory paths will still be preserved).  By specifying a destination
	name, you can control how files are named within the cabinet and what paths
	files and directories have within the cabinet.

	STEP OPERATION: For scenarios where callbacks are not feasible or supported,
	you could try adding a directory file-by-file in a loop in the calling app.
	To do this, call CabAddStepInit on the directory that you wish to step-add.
	The return value is the number of files in the directory tree.  If this
	number is greater than zero, you can call CabAddStep in a loop with indexes
	ranging from 0 to the value returned by CabAddStepInit, inclusive; e.g., if
	CabAddStepInit return 4, then you should call CabAddStep with indexes
	ranging from 0 to 4.  The astute observer will note that this will result
	in CabAddStep being called 5 times even though there are only 4 files; the
	final call, in which the index is equal to the number of files, is a special
	call signaling to CabLite that you are done with this directory and that it
	can clean up.  Failure to make this final call to CabAddStep will result in
	a memory leak.  The indexes do not have to be used in any particular order;
	in the example above, you step through the indexes backwards from 3 to 0 if
	you wish (this would reverse the placement order of the files) (note that
	after you call the termination index--in this case, 4--you cannot call any
	other indexes).
