#include <windows.h>
#include <stdio.h>

// Alternatively, you can include CabLite.h and add link to CabLite.lib at
// link-time to avoid the manual library loading and eliminate the need for
// these typedefs.
typedef DWORD (WINAPI *PFNCABDIRECTORY)(LPCSTR, LPCSTR, PVOID);
typedef WORD (WINAPI *PFNCABEXTRACT)(LPCSTR, LPCSTR, PVOID);

void CALLBACK printstatus( LPCSTR lpszCurrentFile,
                           WORD wCompletedFiles,
                           WORD wTotalFiles )
{
	if (strlen(lpszCurrentFile))
	{
		printf("   %4d/%4d files completed; now compressing %-24s\r",
		       wCompletedFiles,
		       wTotalFiles,
		       lpszCurrentFile);
	}
	else
	{
		printf("   %4d/%4d files completed; now writing cabinet to disk             \r",
		       wCompletedFiles,
		       wTotalFiles);
	}
}

void CALLBACK extractstatus( LPCSTR lpszCurrentFile,
                             WORD wCompletedFiles,
                             WORD wAction )
{
// The following defines were copied from CabLite.h
#define CABLITE_EXTRACTION_ACTION_SKIPPING  0
#define CABLITE_EXTRACTION_ACTION_STARTING  1
#define CABLITE_EXTRACTION_ACTION_FINISHED  2

	LPCSTR lpszAction;

	switch (wAction)
	{
		case CABLITE_EXTRACTION_ACTION_SKIPPING:
			lpszAction = "skipping";
			break;
		case CABLITE_EXTRACTION_ACTION_STARTING:
			lpszAction = "starting";
			break;
		case CABLITE_EXTRACTION_ACTION_FINISHED:
			lpszAction = "finished";
			break;
		default:
			lpszAction = "????????";
	}

	printf("   %4d files processed; current action: %s %-24s\r",
	       wCompletedFiles,
	       lpszAction,
	       lpszCurrentFile);
}

int main( )
{
	HMODULE hCabLite;
	PFNCABDIRECTORY pfnCabDirectory;
	PFNCABEXTRACT pfnCabExtract;

	hCabLite = LoadLibrary(TEXT("CabLite.dll"));
	if (hCabLite == NULL) return(1);

	pfnCabDirectory = (PFNCABDIRECTORY)GetProcAddress(hCabLite, "CabDirectory");
	pfnCabExtract = (PFNCABEXTRACT)GetProcAddress(hCabLite, "CabExtract");

	if (pfnCabDirectory && pfnCabExtract)
	{
		LPSTR lpszOriginal = "C:\\WINDOWS\\Driver Cache\\i386\\driver.cab";
		LPSTR lpszExtracted = "C:\\CabLiteTemp\\driver";
		DWORD dwResult;
		WORD wFiles;

		printf("Extracting %s to %s ...\n", lpszOriginal, lpszExtracted);
		wFiles = pfnCabExtract(lpszOriginal, lpszExtracted, extractstatus);
		printf("\n   DONE - Files Extracted: %d\n\n", wFiles);

		printf("Compressing %s ...\n", lpszExtracted);
		dwResult = pfnCabDirectory(lpszExtracted, NULL, printstatus);
		printf("\n   DONE - Files Added: %d, Status Code: %d, Extended Status Code: %d\n\n",
		       HIWORD(dwResult), dwResult & 1, (dwResult & 0x3C) >> 2);
	}

	FreeLibrary(hCabLite);

	printf("Press [ENTER] to exit . . .\n");
	getchar();

	return(0);
}
