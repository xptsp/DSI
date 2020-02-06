;-------------------------------------------------------------------------------
; First, let's open the CabLite.dll persistently so that we don't keep loading
; and unloading it; ideally, this handle would be a global variable--opened
; when the application starts, and closed at shutdown (well, closing a DLL
; during shutdown of the application is moot, so you can skip that step).
;-------------------------------------------------------------------------------
$CabLiteDll = DllOpen('CabLite.dll');


;-------------------------------------------------------------------------------
; Example 1: Compress a single file
;-------------------------------------------------------------------------------
DllCall($CabLiteDll, 'dword', 'CabFile', 'str', 'C:\Windows\notepad.exe', 'str', 'C:\CabLite\notepad.ex_')
; The above will compress 'C:\Windows\notepad.exe' to 'C:\CabLite\notepad.ex_'
DllCall($CabLiteDll, 'dword', 'CabFile', 'str', 'C:\Windows\explorer.exe', 'ptr', 0)
; By passing a ptr 0 as the second parameter, you can auto-generate a name
; for the compressed file; for CabFile, this will be an underscore name,
; located in the same directory as the source file; in this case, it will
; be 'C:\Windows\explorer.ex_'


;-------------------------------------------------------------------------------
; Example 2: Compress an entire directory tree with no status updates
;-------------------------------------------------------------------------------
DllCall($CabLiteDll, 'dword', 'CabDirectory', 'str', 'C:\Windows\System32\Drivers\etc', 'str', 'C:\CabLite\drvetc.cab', 'ptr', 0)
; The above will compress 'C:\Windows\System32\Drivers\etc' to 'C:\CabLite\drvetc.cab'
DllCall($CabLiteDll, 'dword', 'CabDirectory', 'str', @ProgramFilesDir&'\Windows NT', 'ptr', 0, 'ptr', 0)
; Just like in Example 1, passing a ptr 0 as the second parameter will cause
; the path and name of the cabinet to be auto-generated.  Since the input is
; "C:\Program Files\Windows NT", the resulting cab will be
; "C:\Program Files\Windows NT.cab"


;-------------------------------------------------------------------------------
; Example 3: Extracting cabinets
;-------------------------------------------------------------------------------
DllCall($CabLiteDll, 'ushort', 'CabExtract', 'str', 'C:\CabLite\notepad.ex_', 'ptr', 0, 'ptr', 0)
; The above will extract C:\CabLite\notepad.ex_ to C:\CabLite\* (using the automatic output path)
DllCall($CabLiteDll, 'ushort', 'CabExtract', 'str', 'C:\CabLite\drvetc.cab', 'ptr', 0, 'ptr', 0)
; The above will extract C:\CabLite\drvetc.cab to C:\CabLite\drvetc\* (using the automatic output path)
$result = DllCall($CabLiteDll, 'ushort', 'CabExtract', 'str', @ProgramFilesDir&'\Windows NT.cab', 'str', 'C:\CabLite\test', 'ptr', 0)
; The above will extract C:\Program Files\Windows NT.cab to C:\CabLite\test\* (manually specifying an output path)
MsgBox(0, "Example 3: Status", $result[0] & " files extracted from " & @ProgramFilesDir&'\Windows NT.cab')
; To check the success of the extraction, look at the return of the function; if
; this number is zero, then something went wrong.


;-------------------------------------------------------------------------------
; Example 4: Compress an entire directory tree with status updates
;
; NOTE: Callbacks don't really work in AutoIt in the sense that AutoIt cannot
; process window messages during a CabLite call, so if you are using an AutoIt
; UI, it will not update; this is one of many flaws in the design of AutoIt.
;-------------------------------------------------------------------------------
Func StatusUpdateForLunaCab($sCurrentFile, $iCompletedFiles, $iTotalFiles)
	; This is where you put code to update the status displayed in the UI
	If $sCurrentFile <> "" Then
		$sAction = "now compressing " & $sCurrentFile
	Else
		$sAction = "writing cabinet file to disk"
	EndIf
	MsgBox(0, "Example 4: Status", StringFormat("%d/%d files completed; %s", $iCompletedFiles, $iTotalFiles, $sAction))
EndFunc

$handle = DLLCallbackRegister("StatusUpdateForLunaCab", "none", "str;ushort;ushort")
$result = DllCall($CabLiteDll, 'dword', 'CabDirectory', 'str', 'C:\WINDOWS\Resources\Themes\Luna', 'str', 'C:\CabLite\Luna.cab', 'ptr', DllCallbackGetPtr($handle))
DllCallbackFree($handle)
MsgBox(0, "Example 4: Status", BitShift(BitAND($result[0], 0xFFFF0000), 16) & " files added.")


;-------------------------------------------------------------------------------
; Example 5: Making sense of the CabFile/CabDirectory return code
;-------------------------------------------------------------------------------
$result = DllCall($CabLiteDll, 'dword', 'CabDirectory', 'str', @ProgramFilesDir&'\Windows NT', 'str', 'C:\CabLite\pfwinnt.cab', 'ptr', 0)
$statusbit   = BitShift(BitAND($result[0], 0x00000001), 0)  ; can be shortened to just BitAND($result[0], 1)
$mismatchbit = BitShift(BitAND($result[0], 0x00000002), 1)  ; can be shortened to BitShift(BitAND($result[0], 2), 1)
$extstatus   = BitShift(BitAND($result[0], 0x0000003C), 2)  ; can be shortened to BitShift(BitAND($result[0], 0x3C), 2)
$filesadded  = BitShift(BitAND($result[0], 0xFFFF0000), 16) ; equivalent to the HIWORD macro in C
$statusmsg  = StringFormat("Main status (1=success, 0=error): %d\n", $statusbit)
$statusmsg &= StringFormat("Was the final number of files what we expected? (1=no/mismatch, 0=yes/OK): %d\n", $mismatchbit)
$statusmsg &= StringFormat("Extended status code (0-15; see readme.txt for details): %d\n", $extstatus)
$statusmsg &= StringFormat("The number of files successfully added: %d\n", $filesadded)
$statusmsg &= StringFormat("The raw return code is: 0x%08X\n", $result[0])
MsgBox(0, "Example 5: Extended Results", $statusmsg)
;
; In general, for CabFile, the only thing that you need to pay attention to is
; b0 ($statusbit in this example).  b1 ($mismatchbit) is not used for CabFile,
; the extended status code ($extstatus) is useful only for debugging, and the
; high word ($filesadded) always be 1 if b0=1/success.
;
; For CabDirectory, the things to pay attention to are b0 ($statusbit in this
; example) and the high word ($filesadded).  Both b1 ($mismatchbit) and the
; extended status code ($extstatus) are useful only for debugging.  If b1 is
; set, then it means that the number of files actually added did not correspond
; to the number of files that were found when scanning the directory prior to
; the operation; this may be the result of some external program adding or
; deleting files in the directory tree during the cabbing operation.


;-------------------------------------------------------------------------------
; Example 6: Manual/advanced compression operation
;-------------------------------------------------------------------------------
$result = DllCall($CabLiteDll, 'ptr', 'CabStart', 'str', 'C:\CabLite\manual.cab', 'ushort', 0)
$hCabLite = $result[0]
$iTotalAdded = 0;
$result = DllCall($CabLiteDll, 'ushort', 'CabAdd', 'ptr', $hCabLite, 'str', 'C:\Windows\notepad.exe', 'str', 'windoze\np.exe')
$iTotalAdded += $result[0]
; Store notepad.exe as 'windows\np.exe' inside the cab
$result = DllCall($CabLiteDll, 'ushort', 'CabAdd', 'ptr', $hCabLite, 'str', 'C:\WINDOWS\Resources\Themes\Luna', 'str', 'Luna')
$iTotalAdded += $result[0]
; Store the contents of the Luna folder in a folder named Luna in the cab
$result = DllCall($CabLiteDll, 'ushort', 'CabAdd', 'ptr', $hCabLite, 'str', 'C:\Windows\System32\Drivers\etc', 'ptr', 0)
$iTotalAdded += $result[0]
; Store the contents of the etc folder in the root of the cab
$result = DllCall($CabLiteDll, 'dword', 'CabFinish', 'ptr', $hCabLite)
If $result[0] = 0 Then
	MsgBox(0, "Example 6", "Oops, error writing cabinet")
Else
	MsgBox(0, "Example 6", $iTotalAdded & " files added.")
EndIf
; To use CabStart/CabAdd/CabFinish, CabLite.dll must remain in memory during
; the entire process; in other words, you must use DllOpen/DllClose, and you
; must make sure that the dll is not somehow closed after CabStart and before
; CabFinish; this in-memory requirement does not apply to any of the other
; CabLite.dll functions.


; ------------------------------------------------------------------------------
; Now let's close our DLL
; ------------------------------------------------------------------------------
DllClose($CabLiteDll)
