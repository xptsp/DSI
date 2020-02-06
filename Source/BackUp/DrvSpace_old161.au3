#NoTrayIcon
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=D:\DriveSpace\Source\Program.ico
#AutoIt3Wrapper_Outfile=D:\DriveSpace\CAB\DrvSpace.exe
#AutoIt3Wrapper_Compression=4
#AutoIt3Wrapper_Res_Description=Changes Drive Icons to show how much space is used
#AutoIt3Wrapper_Res_Fileversion=5.3.6.4
#AutoIt3Wrapper_Res_LegalCopyright=Douglas Orend
#AutoIt3Wrapper_Res_Language=1033
#AutoIt3Wrapper_Run_Tidy=y
#Obfuscator_Parameters=/cs=0 /cn=0 /cf=0 /cv=0 /sf=1
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
;==================================================================================
; Include necessary files for needed functionality: ( v3.2.10.0 )
#include <GuiTreeView.au3>
#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <ListBoxConstants.au3>
#include <ListViewConstants.au3>
#include <ProgressConstants.au3>
#include <StaticConstants.au3>
#include <TabConstants.au3>
#include <TreeViewConstants.au3>
#include <WindowsConstants.au3>
#include <Array.au3>
#include <misc.au3>
#include <string.au3>
#include <Constants.au3>
#include <Math.au3>
#include <Date.au3>
#include <ModernMenuRaw.au3>
#include <Inet.au3>

; Set necessary AutoIt options for this program to work properly:
If @Compiled = 0 Then
	AutoItSetOption("TrayIconHide", 0)
	AutoItSetOption("TrayIconDebug", 1)
EndIf
AutoItSetOption("MouseCoordMode", 0)
AutoItSetOption("GUICloseOnESC", 1)
AutoItSetOption("GUIOnEventMode", 1)
AutoItSetOption("WinTitleMatchMode", 4)

; Required Icon Array variables:
Dim $Chk[15] = ["CDROM", "RAMDISK", "NETWORK", "REMOVABLE", "CARD", "CAMERA", "VIDCAM", "MP3", "FIXED", "OS", "USB", "FIRE", "ZIP", "FLOPPY", "FLASH"]
Dim $IconArray[15][15] = [ _
		[196, 197, 198, 199, 200, 201, 202, 203, -1, -1, -1, -1, -1, -1, "Icon_32"], _		;  0 = Optical Drives
		[000, 001, 002, 003, 004, 005, 006, 007, 008, 009, 010, 011, 012, 013, "Icon_23"], _ 	;  1 = RamDisk Drives
		[014, 015, 016, 017, 018, 019, 020, 021, 022, 023, 024, 025, 026, 027, "Icon_24"], _	;  2 = Network Drives
		[028, 029, 030, 031, 032, 033, 034, 035, 036, 037, 038, 039, 040, 041, "Icon_10"], _	;  3 = Removable Drives
		[042, 043, 044, 045, 046, 047, 048, 049, 050, 051, 052, 053, 054, 055, "Icon_12"], _	;  4 = Card Reader Drives
		[056, 057, 058, 059, 060, 061, 062, 063, 064, 065, 066, 067, 068, 069, "Icon_13"], _	;  5 = Digital Camera
		[070, 071, 072, 073, 074, 075, 076, 077, 078, 079, 080, 081, 082, 083, "Icon_14"], _	;  6 = Digital Camcorder
		[084, 085, 086, 087, 088, 089, 090, 091, 092, 093, 094, 095, 096, 097, "Icon_11"], _ 	;  7 = MP3 Player
		[098, 099, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, "Icon_01"], _	;  8 = Regular Hard Drive
		[112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, "Icon_00"], _	;  9 = OS Hard Drive
		[126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, "Icon_02"], _	; 10 = USB Hard Drive
		[140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, "Icon_03"], _	; 11 = FireWire Hard Drives
		[154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, "Icon_22"], _ 	; 12 = ZIP Drive
		[168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, "Icon_04"], _ 	; 13 = Floppy Drive
		[182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, "Icon_31"]] ; 14 = USB Flash Drives
Dim $Image[4][5] = [[$IconArray[09][03], $IconArray[08][05], $IconArray[10][09], $IconArray[11][12], $IconArray[13][04]], _
		[$IconArray[03][08], $IconArray[07][13], $IconArray[04][02], $IconArray[05][01], $IconArray[06][13]], _
		[$IconArray[00][01], $IconArray[00][02], $IconArray[12][07], $IconArray[01][08], $IconArray[02][10]], _
		[$IconArray[14][05]]]
Dim $Ext[1][3] = [["CLSID\{2B3453E4-49DF-11D3-8229-0080BE509050}", $IconArray[0][7], 8]]

; Other required variables:
Dim $MinVal[11] = [0, 1, 2, 3, 5, 10, 15, 20, 30, 60, 1000000], $Per[14] = [0, 0, 8, 16, 25, 33, 41, 50, 58, 66, 75, 83, 91, 100]
Dim $GUI = 0, $GUI2 = 0, $BOX[60], $LANG_LIST, $LANG_SEL, $LANG_FILE, $THEME_LIST, $THEME_SEL, $THEME_FILE
Dim $PROG_ID = "D5902C4BE60D4234E361443265F260D2B8A28A73", $PNP_DIAG, $TRAY[27][20], $FLOPPY, $PNP[27][3]
Dim $NETWORK, $CYCLES = 1, $DEL_ICONS, $DAILY = 0, $PROGTRAY[13], $LIBICON, $MIN, $RUN, $FLOPPY_BAR
Dim $BMON = 1, $UPDATE, $WEBSITE = "http://xptsp.filetap.com/", $BETA = 0, $NO_BAR, $MDrv, $OS
Dim $PAUSED = False, $ProgTray_BUILT = 0, $DWAR = "", $DRV_SEL = "", $MONITOR, $DIAG = "", $Timer[5], $CONFIG = 0
Dim $CHANGES = 0, $ALLDRIVE = 0, $MANAGE = 0, $MANAGE_DIR = "", $SC[1][2], $LV[2][5], $DIAG_GUI[2]
Dim $MENU[100], $GUI_ONLY = False, $DIR = "", $SDIR = "", $ARun, $z1, $SVCPACK = 0, $DELAY = 0
Dim $oMyRet[2], $CabLiteDll = DllOpen(@ScriptDir & "\CabLite.dll"), $CLSID = "{4EFF15C8-3A43-401B-B45F-C68BB634062C}"

; String variables that mostly target specific registry keys:
Dim $DBEG = _Iif(@Compiled = 0, "(Uncompiled)", "v" & FileGetVersion(@ScriptFullPath)) & "\" & _
		StringReplace(@OSVersion, "WIN_", "") & " " & StringReplace(@OSServicePack, "Service Pack ", "SP") & "\" & @OSArch
Dim $TITLE = "Drive Space Indicator"
Dim $PROC = _Iif(@OSArch = "X64", "64", "")
Dim $ICN = "HKLM" & $PROC & "\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\DriveIcons\"
Dim $ICN64 = "HKLM" & $PROC & "\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\DriveIcons\"
Dim $KEY = "HKLM" & $PROC & "\SOFTWARE\Doug\DriveSpace", $PNPKEY = $KEY & "\PNP"
Dim $RUNKEY = "HKLM" & $PROC & "\SOFTWARE\Microsoft\Windows\CurrentVersion\Run"
Dim $MOUNT = "HKLM" & $PROC & "\SYSTEM\MountedDevices"
Dim $HOME = StringLeft(EnvGet("SystemDrive"), 2), $TRAYSTR[3]

; Make sure that script folder is working folder:
FileChangeDir(@ScriptDir)

; Check status of Shell Hardware Detection service:
$MDrv = RegRead("HKLM" & $PROC & "\SYSTEM\CurrentControlSet\Services\ShellHWDetection", "Start")
If @error Then
	$DWAR = "INFO: Shell Hardware Detection service not installed"
Else
	If $MDrv <> 2 Then $DWAR = "INFO: Shell Hardware Detection service not set to Auto"
EndIf

; Retrieve language settings and language files available:
_Language_Load()
$LANG_SEL = RegRead($KEY, "Language") ; $LANG_SEL = Language selected by the user
If @error <> 0 Or StringInStr($LANG_FILE, $LANG_SEL) = 0 Then $LANG_SEL = "Auto"
If $LANG_SEL = "Auto" Then _Language_AutoSelect()
_Language_GetStrings()

; Retreive the program options from the registry:
$MIN = RegRead($KEY, "Minutes") ; $MIN = Number of minutes between automatic updates
If @error <> 0 Then $MIN = 60
$MIN = _Check_Min($MIN)
$DAILY = RegRead($KEY, "Check_Daily") ; $DAILY = Whether to check each day for updates.
If @error <> 0 Then $DAILY = 0
$DELAY = RegRead($KEY, "Startup_Delay") ; $DELAY = Number of minutes to wait before gathering PNP info
If @error <> 0 Then $DELAY = 2
$DELAY = _Max(0, _Min(9, $DELAY))
$FLOPPY_BAR = RegRead($KEY, "Floppy_Bar") ; $FLOPPY_BAR = Display icons with indicator bars for floppy drives
If @error <> 0 Then $FLOPPY_BAR = 0
$NO_BAR = RegRead($KEY, "No_Bar") ; $NO_BAR = Displays icons with indicator bars for all drives
If @error <> 0 Then $NO_BAR = 0
$THEME_SEL = RegRead($KEY, "Library") ; $THEME_SEL = Select which Icon Theme to use
If @error <> 0 Then $THEME_SEL = ""
$PROGTRAY[0] = RegRead($KEY, "Program_Tray") ; $PROGTRAY = Whether program displays an icon in Notification Tray
If @error <> 0 Then $PROGTRAY[0] = 1
$LIBICON = RegRead($KEY, "Library_Icon") ; $LIBICON = Displays Theme Icon instead of Program icon when set to 1
If @error <> 0 Then $LIBICON = 0
$DEL_ICONS = RegRead($KEY, "Delete_Icons") ; $DEL_ICONS = If checked, drive icons are not deleted from registry.
If @error <> 0 Then $DEL_ICONS = 1
$MDrv = RegRead($KEY, "Monitor") ; $MDrv = Displays which icon that is monitored in the Notification Tray
$MDrv = StringReplace($MDrv, "%SystemDrive%", $HOME)
$Timer[3] = RegRead($KEY, "Next_Update") ; $Timer[3] = Last successful update check
If @error <> 0 Then $Timer[3] = _NowCalc()

; Enable or Disable "monitoring" shortcuts based on registry setting:
$MONITOR = RegRead($KEY, "Monitor_Shortcuts") ; $MONITOR = If checked, right-click options to add/delete shortcuts exist.
If @error <> 0 Then $MONITOR = 1
_Shortcut_Monitor()

; Process command-line parameters:
If $CMDLINE[0] > 0 Then
	For $i = 1 To $CMDLINE[0]
		If $CMDLINE[$i] = "/RECOVER" Then
			_Recover_Script()
		ElseIf $CMDLINE[$i] = "/INSTALL" Then
			$CONFIG = _Max(2, $CONFIG)
		ElseIf $CMDLINE[$i] = "/PASSIVE" Then
			$CONFIG = _Max(3, $CONFIG)
		ElseIf $CMDLINE[$i] = "/SILENT" Or $CMDLINE[$i] = "/S" Then
			$CONFIG = _Max(4, $CONFIG)
		ElseIf $CMDLINE[$i] = "/REMOVE" Then
			_Program_Remove()
		ElseIf $CMDLINE[$i] = "/STARTUP" Then
			If $DELAY <> 0 Then Sleep($DELAY * 60000)
		ElseIf $CMDLINE[$i] = "/MONITOR" Then
			_Shortcut_Track($CMDLINE[$i + 1])
		ElseIf $CMDLINE[$i] = "/NOMONITOR" Then
			_Shortcut_NoTrack($CMDLINE[$i + 1])
		ElseIf $CMDLINE[$i] = "/NOBAR" Then
			$NO_BAR = 1
			RegWrite($KEY, "No_Bar", "REG_DWORD", $NO_BAR)
		ElseIf $CMDLINE[$i] = "/USEFLOPPY" Then
			$FLOPPY_BAR = 1
			RegWrite($KEY, "Floppy_Bar", "REG_DWORD", $FLOPPY_BAR)
		ElseIf $CMDLINE[$i] = "/CONFIG" Then
			_Send_Message(0x8000)
		ElseIf $CMDLINE[$i] = "/NOCHECK" Then
			$DAILY = 0
			RegWrite($KEY, "Check_Daily", "REG_DWORD", $DAILY)
		ElseIf $CMDLINE[$i] = "/BETA" Then
			$BETA = 1
		ElseIf $CMDLINE[$i] = "/SVCPACK" Then
			$SVCPACK = 1
		ElseIf $CMDLINE[$i] = "/1CYCLE" Then
			$DEL_ICONS = 0
			$CYCLES = 0
		ElseIf $CMDLINE[$i] = "/UPDATE:Never" Then
			$MIN = $MinVal[10]
			RegWrite($KEY, "Minutes", "REG_DWORD", $MIN)
		ElseIf $CMDLINE[$i] = "/LANG:AUTO" Then
			_Language_AutoSelect()
		ElseIf $CMDLINE[$i] = "/NOSC" Then
			$SDIR = @TAB
		ElseIf $CMDLINE[$i] = "/SC" Then
			$SDIR = "Drive Space Indicator"
		ElseIf $CMDLINE[$i] = "/PROGTRAY" Then
			$PROGTRAY[0] = 1
			RegWrite($KEY, "Program_Tray", "REG_DWORD", $PROGTRAY[0])
		ElseIf $CMDLINE[$i] = "/PROGTRAY:0" Or $CMDLINE[$i] = "/NOTRAY" Then
			$PROGTRAY[0] = 0
			RegWrite($KEY, "Program_Tray", "REG_DWORD", $PROGTRAY[0])
		ElseIf $CMDLINE[$i] = "/LIBICON" Then
			$LIBICON = 1
			RegWrite($KEY, "Library_Icon", "REG_DWORD", $LIBICON)
		ElseIf $CMDLINE[$i] = "/LIBICON:0" Or $CMDLINE[$i] = "/NOLIBICON" Then
			$LIBICON = 0
			RegWrite($KEY, "Library_Icon", "REG_DWORD", $LIBICON)
		ElseIf StringLeft($CMDLINE[$i], 7) = "/DELAY:" Then
			$DELAY = _Max(_Min(9, StringReplace($CMDLINE[$i], "/DELAY:", "")), 0)
			RegWrite($KEY, "Startup_Delay", "REG_DWORD", $DELAY)
		ElseIf StringLeft($CMDLINE[$i], 4) = "/SC:" Then
			$SDIR = StringReplace(StringReplace(StringReplace($CMDLINE[$i], "/SC:", ""), """", ""), "'", "")
		ElseIf StringLeft($CMDLINE[$i], 8) = "/UPDATE:" Then
			$MIN = _Check_Min(StringReplace($CMDLINE[$i], "/UPDATE:", ""))
			RegWrite($KEY, "Minutes", "REG_DWORD", $MIN)
		ElseIf StringLeft($CMDLINE[$i], 6) = "/ICON:" Then
			$MDrv = StringLeft(StringReplace($CMDLINE[$i], "/ICON:", ""), 1) & ":"
		ElseIf StringLeft($CMDLINE[$i], 6) = "/LANG:" Then
			$TMP = StringReplace($CMDLINE[$i], "/LANG:", "")
			If FileExists($TMP) = 0 Then _DisplayError(_ReadStr("Main_01"))
			$LANG_SEL = $TMP
			RegWrite($KEY, "Language", "REG_SZ", $LANG_SEL)
		ElseIf StringLeft($CMDLINE[$i], 7) = "/THEME:" Then
			$THEME_SEL = StringReplace($CMDLINE[$i], "/THEME:", "")
			$THEME_FILE = _Theme_File($THEME_SEL)
			If FileExists($THEME_FILE) = 0 Then _DisplayError(_ReadStr("Main_02") & " """ & $THEME_FILE & """!")
			RegWrite($KEY, "Library", "REG_SZ", $THEME_SEL)
		ElseIf $CMDLINE[$i] = "/?" Or $CMDLINE[$i] = "/H" Or $CMDLINE[$i] = "/HELP" Then
			_DisplayError(StringReplace(_ReadStr("Main_04"), "|", @CRLF), 0)
		Else
			_DisplayError(_ReadStr("Main_03") & @CRLF & @CRLF & StringReplace(_ReadStr("Main_04"), "|", @CRLF))
		EndIf
	Next
EndIf
If $CONFIG > 1 Then
	Install_Start()
	While 1
		Sleep(1000)
	WEnd
EndIf

; Fill in last-moment details:
_Theme_Load()
$Timer[1] = $MIN * 60000
$THEME_FILE = _Theme_File($THEME_SEL)
$RUN = RegRead($RUNKEY, "DriveSpace")
$RUN = _Iif(StringInStr($RUN, "DrvSpace") = 0, 0, 1)
If 1 = 0 Then _Tray_Callback(0, 0)

; If another process created a window with the proper name, show Config GUI:
_Send_Message()

; Set up internal program details:
GUICreate($PROG_ID)
GUIRegisterMsg(0x0219, "_Msg_Media") ; $WM_DEVICECHANGE
GUIRegisterMsg(0x8001, "_Msg_Show") ; $WM_APP + 1
GUIRegisterMsg(0x8002, "_Msg_Exit") ; $WM_APP + 2
GUIRegisterMsg(0x8003, "_Msg_Shortcut") ; $WM_APP + 3
GUIRegisterMsg(0x0218, "_Msg_Power") ; $WM_POWERBROADCAST

; If testing, build the GUI and loop forever:
If @Compiled = 0 And $GUI_ONLY Then
	GUI_Build()
	While 1
		Sleep(1000)
	WEnd
EndIf

; Start endless loop:
While 1
	; Removing current icon, then start diag message:
	$DIAG = ""
	If $BMON = 1 Then _PNP_Scan()
	$PNP_DIAG = ""
	$z = 0

	; Figure out which icon to use for each drive:
	For $i = 0 To UBound($Chk) - 1
		$List = _DriveGetDrive($Chk[$i])
		If @error Then ContinueLoop
		For $j = 1 To $List[0]
			$FS = 0
			$TS = 0
			$PU = 0
			$G = $i
			$ICON = 0
			$Drv = $List[$j]
			If $i = 0 Then ; Decide whether optical drive is CD, DVD or virtual.
				$Type = _PNP_Get($Drv)
				$ICON = RegRead($PNPKEY, $Type)
				If @error Then $ICON = _Iif(StringInStr($Type, "DVD") <> 0, 2, 1)
				RegWrite($PNPKEY, $Type, "REG_DWORD", $ICON)
				If DriveStatus($Drv) = "READY" Then $ICON = _Iif(DriveSpaceTotal($Drv) <= 700, 4, 5)
				$PNP_DIAG = $PNP_DIAG & StringUpper($Drv) & " = -" & $ICON & "," & $Type & @CR
				$ICON = $IconArray[0][$ICON]
				$ARun = ""
			Else
				If $i = 8 Then ; Decide whether Fixed drive is Fixed, Usb or FireWire:
					$Type = _PNP_Get($Drv)
					$G = RegRead($PNPKEY, $Type)
					If @error Then $G = _Iif(StringLeft($Type, 3) = "USB", $i + 2, _Iif(StringLeft($Type, 4) = "1394", $i + 3, $i))
					RegWrite($PNPKEY, $Type, "REG_DWORD", $G)
					If $HOME = $Drv Then $G = $i + 1
					$PNP_DIAG = $PNP_DIAG & StringUpper($Drv) & " = " & $G & "," & $Type & @CR
					$ARun = _Iif(IniRead($Drv & "\AutoRun.INF", "AutoRun", "Icon", "") <> "", ", A=1", "")
				ElseIf $i = 3 Then ; Figure out what kind of removable drive this is:
					$Type = _PNP_Get($Drv)
					$G = RegRead($PNPKEY, $Type)
					If @error Then
						$G = $i
						If StringInStr($Type, "Reader") <> 0 Then $G = $i + 1
						If StringInStr($Type, "Camera") <> 0 Then $G = $i + 2
						If StringInStr($Type, "MP3") <> 0 Or StringInStr($Type, "Audio") <> 0 Then $G = $i + 4
						If StringInStr($Type, "ZIP") <> 0 Then $G = $i + 9
						If StringInStr($Type, "Flash") <> 0 Then $G = $i + 11
						If StringInStr($FLOPPY, $Drv) <> 0 Then $G = $i + 10
					EndIf
					$PNP_DIAG = $PNP_DIAG & StringUpper($Drv) & " = " & $G & "," & $Type & @CR
					RegWrite($PNPKEY, $Type, "REG_DWORD", $G)
					$ARun = ""
				EndIf
				If $G = $i + 10 And $FLOPPY_BAR = 0 Then
					$ICON = $IconArray[$G][0]
				Else
					If DriveStatus($Drv) = "READY" Then
						If $NO_BAR Then
							$ICON = 0
						Else
							$FS = DriveSpaceFree($Drv)
							$TS = DriveSpaceTotal($Drv)
							$PU = ($TS - $FS) / $TS * 100
							For $k = 13 To 1 Step -1
								If $PU <= $Per[$k] Then $ICON = $k
							Next
						EndIf
						$ICON = $IconArray[$G][$ICON]
					Else
						$ICON = $IconArray[$G][0]
					EndIf
				EndIf
			EndIf
			$z = _Tray_Find($Drv)
			$TRAY[$z][0] = $Drv
			$TRAY[$z][1] = $G
			RegWrite($ICN & StringUpper(StringLeft($Drv, 1)) & "\DefaultIcon", "", "REG_SZ", $THEME_FILE & "," & $ICON)
			If @OSArch = "X64" Then
				RegWrite($ICN64 & StringUpper(StringLeft($Drv, 1)) & "\DefaultIcon", "", "REG_SZ", $THEME_FILE & "," & $ICON)
			EndIf
			$DIAG = $DIAG & StringUpper($Drv) & ", Ty=" & StringLeft($Chk[$G], 3) & ", F=" & Round($FS) & _
					", T=" & Round($TS) & ", P=" & Round($PU) & ", I=" & $ICON & $ARun & @CR
		Next
	Next
	$DIAG = $DIAG & @CR & "PNP Info " & @CR & $PNP_DIAG
	$Timer[0] = TimerInit()

	; Update the GUI with new information generated by update cycle:
	_GUI_Drive_Icon()
	_GUI_Diagnostics_Populate()

	; If "/CONFIG" parameter specified, show Config GUI and wait for completion:
	If $CONFIG = 1 Then
		GUI_Build()
		While $GUI <> 0
			Sleep(1000)
		WEnd
		If MsgBox(0x24, $TITLE, _FormatStr("Main_06", $TITLE), 0, $GUI) = 7 Then Exit
		$CONFIG = 0
	EndIf

	; Update Shell Extension Icons:
	For $i = 0 To UBound($Ext) - 1
		If RegRead("HKCR" & $PROC & "\" & $Ext[$i][0] & "\DefaultIcon", "") <> "" Then _
				RegWrite("HKCR" & $PROC & "\" & $Ext[$i][0] & "\DefaultIcon", "", "REG_SZ", $THEME_FILE & "," & $Ext[$i][1])
	Next

	; Do other miscellaneous tasks:
	If $ProgTray_BUILT = 0 Then
		Tray_Build()
	Else
		If $NO_BAR = 0 Then _Tray_Update()
	EndIf

	_Shortcut_UpdateAll()
	_Update_Explorer()
	If $CYCLES = 0 Then Exit

	; Reduce memory used as much as possible, then Sleep for specified number of minutes before next update:
	_Reduce_Memory()
	While 1
		If $DAILY > 0 Then
			If _NowCalc() > $Timer[3] Then Updates_Build()
		EndIf
		$Timer[2] = TimerDiff($Timer[0])
		If $Timer[0] = 1500 Then Sleep(1500)
		If $Timer[0] = 0 Or $Timer[2] > $Timer[1] Then ExitLoop
		If $MIN <> $MinVal[10] Then
			_TrayIconSetToolTip($PROGTRAY[1], $TITLE & @CRLF & _ReadNum("Main_05", Round(($Timer[1] - $Timer[2]) / 60000)))
		Else
			_TrayIconSetToolTip($PROGTRAY[1], $TITLE)
		EndIf
		If $PROGTRAY[0] = 1 Then _TrayIconSetState($PROGTRAY[1])
		Sleep(1000)
	WEnd
	While $PAUSED And $Timer[0] > 1500
		If $DAILY > 0 Then
			If _NowCalc() > $Timer[3] Then Updates_Build()
		EndIf
		_TrayIconSetToolTip($PROGTRAY[1], $TITLE & @CRLF & $TRAYSTR[2])
		Sleep(1000)
	WEnd
WEnd
Exit

;==================================================================================
; Functions handling any calls to CABLITE.DLL:
;==================================================================================
Func _MD5Hash($sFile)
	Local $sBuffer = DllStructCreate("char[33]")
	DllCall($CabLiteDll, 'dword', 'MD5FileHex', 'str', $sFile, 'ptr', DllStructGetPtr($sBuffer))
	Local $sHash = DllStructGetData($sBuffer, 1)
	$sBuffer = 0
	Return ($sHash)
EndFunc   ;==>_MD5Hash

Func _ExpandCab($sFile)
	DirCreate(@TempDir & "\DSI")
	Local $result = DllCall($CabLiteDll, "ushort", "CabExtract", "str", $sFile, "str", @TempDir & "\DSI", "ptr", 0)
	If IsArray($result) Then Return $result[0]
	Return SetError(1, 0, -1)
EndFunc   ;==>_ExpandCab

Func _CompressCab($sCab, $sFile)
	Local $result = DllCall($CabLiteDll, 'ptr', 'CabStart', 'str', $sCab, 'ushort', 0)
	Local $hCabLite = $result[0]
	Local $iTotalAdded = 0;
	$result = DllCall($CabLiteDll, 'ushort', 'CabAdd', 'ptr', $hCabLite, 'str', $sFile, 'str', 0)
	$iTotalAdded += $result[0]
	$result = DllCall($CabLiteDll, 'dword', 'CabFinish', 'ptr', $hCabLite)
	If IsArray($result) Then Return $result[0]
	Return SetError(1, 0, -1)
EndFunc   ;==>_CompressCab

;==================================================================================
; Functions handling system and message notifications:
;==================================================================================
Func _Msg_Media($hWndGUI, $MsgID, $WParam, $LParam)
	If $WParam = "0x00008000" Or $WParam = "0x00008004" Then
		$Timer[0] = 1500
		$BMON = 1
		$NETWORK = 0
	EndIf
EndFunc   ;==>_Msg_Media

Func _Msg_Show()
	GUI_Build()
EndFunc   ;==>_Msg_Show

Func _Msg_Exit()
	Tray_Exit()
EndFunc   ;==>_Msg_Exit

Func _Msg_Shortcut()
	_GUI_Shortcut_Populate()
EndFunc   ;==>_Msg_Shortcut

Func _Msg_Power($Hwnd, $MSG, $WParam, $LParam)
	$PAUSED = _Iif($WParam = 0x04, True, False)
EndFunc   ;==>_Msg_Power

;==================================================================================
; Functions handling Plug-And-Play detection:
;==================================================================================
Func _PNP_Scan()
	; Find floppy drives for the script:
	;====================================================================================
	Local $UsbDev, $Drv = DriveGetDrive("REMOVABLE"), $TS = ""
	$FLOPPY = ""
	If @error = 0 Then
		For $y = 1 To $Drv[0]
			$UsbDev = RegRead($MOUNT, "\DosDevices\" & $Drv[$y])
			$UsbDev = _HexToString(StringReplace(StringReplace($UsbDev, "00", ""), "0x", ""))
			If $UsbDev <> "" And StringInStr($UsbDev, "FDC#GENERIC_FLOPPY_DRIVE") <> 0 Then $FLOPPY = $FLOPPY & "|" & $Drv[$y]
		Next
	EndIf

	; Get PNP Device IDs for all drives:
	;====================================================================================
	Local $x = 1, $colItems, $y, $Antecedent, $Dependent
	Const $wbemFlagReturnImmediately = 0x10, $wbemFlagForwardOnly = 0x20

	; Get the disk/partition number for the logical drives attached to machine:
	$objWMIService = ObjGet("winmgmts:\\localhost\root\CIMV2")
	If IsObj($objWMIService) = 0 Then
		$USE_WMI = 0
	Else
		$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_LogicalDiskToPartition", _
				"WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
		If IsObj($colItems) Then
			For $objItem In $colItems
				$Antecedent = _StringBetween($objItem.Antecedent, '"', '"')
				$Dependent = _StringBetween($objItem.Dependent, '"', '"')
				$PNP[$x][0] = $Dependent[0]
				$PNP[$x][1] = $Antecedent[0]
				$x = $x + 1
			Next
			$PNP[0][0] = $x - 1
		EndIf

		; Associate physical drive with disk/partition number in array:
		$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_DiskDriveToDiskPartition", "WQL", _
				$wbemFlagReturnImmediately + $wbemFlagForwardOnly)
		If IsObj($colItems) Then
			For $objItem In $colItems
				$Antecedent = _StringBetween($objItem.Antecedent, '"', '"')
				$Dependent = _StringBetween($objItem.Dependent, '"', '"')
				$drive_physical = StringTrimLeft($Antecedent[0], StringInStr($Antecedent[0], "\", 1, -1))
				For $y = 1 To $x - 1
					If $Dependent[0] = $PNP[$y][1] Then $PNP[$y][1] = $drive_physical
				Next
			Next
		EndIf

		; Associate PNP device ID with physical drives in array:
		$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_DiskDrive", "WQL", _
				$wbemFlagReturnImmediately + $wbemFlagForwardOnly)
		If IsObj($colItems) Then
			For $objItem In $colItems
				$DeviceID = StringTrimLeft($objItem.DeviceID, StringInStr($objItem.DeviceID, "\", 1, -1))
				For $y = 1 To $x - 1
					If $DeviceID = $PNP[$y][1] Then
						$S = StringSplit($objItem.PNPDeviceID, "\")
						$PNP[$y][1] = $S[1] & "\" & $S[2]
						$PNP[$y][2] = $objItem.Caption
					EndIf
				Next
			Next
		EndIf
	EndIf

	; Rest the BMON flag so that the program doesn't constantly get PNP Device IDs:
	$BMON = 0
EndFunc   ;==>_PNP_Scan

Func _PNP_Get($TDrv, $Element = 1)
	Local $a
	For $a = 1 To $PNP[0][0]
		If $TDrv = $PNP[$a][0] Then Return $PNP[$a][$Element]
	Next
	Return _HexToString(StringReplace(StringReplace(RegRead($MOUNT, "\DosDevices\" & $TDrv), "00", ""), "0x", ""))
EndFunc   ;==>_PNP_Get

;==================================================================================
; Internal functions:
;==================================================================================
Func _DisplayError($MSG, $ERR = 1)
	MsgBox(0x10, $TITLE, _Iif($ERR = 1, _ReadStr("ERROR") & ": ", "") & $MSG, 0, $GUI)
	Exit
EndFunc   ;==>_DisplayError

Func _Center($Line, $Max)
	Local $TLine = _ReadStr($Line), $Len = StringLen($TLine), $Pad = _StringRepeat(" ", Round(($Max - $Len) / 2))
	Return $Pad & $TLine & $Pad
EndFunc   ;==>_Center

Func Leave_Script()
	Local $a

	; Remove all tray icons belonging to this program:
	For $a = 1 To 26
		_TrayIconSetState($TRAY[$a][4], 2)
		_TrayIconDelete($TRAY[$a][4])
	Next
	_TrayIconSetState($PROGTRAY[1], 2)
	_TrayIconDelete($PROGTRAY[1])

	; Clean up icons, restore shortcuts, and update explorer:
	If $DEL_ICONS = 1 And @Compiled Then
		_Remove_Icons()
		_Shortcut_UpdateAll(0)
		_Update_Explorer()
	EndIf

	; Clean up the rest of the crap:
	If $GUI <> 0 Then GUIDelete($GUI)
	If $GUI2 <> 0 Then GUIDelete($GUI2)
	FileDelete(@TempDir & "\Program.ICO")
	FileDelete(@TempDir & "\X.ICO")
	FileDelete(@TempDir & "\Arrow.ICO")
	DllClose($CabLiteDll)
	OnAutoItExit()
	Exit
EndFunc   ;==>Leave_Script

Func _Reduce_Memory($i_PID = -1)
	If @Compiled = 0 Then Return
	If $i_PID <> -1 Then
		Local $ai_Handle = DllCall("kernel32.dll", 'int', 'OpenProcess', 'int', 0x1f0fff, 'int', False, 'int', $i_PID)
		Local $ai_Return = DllCall("psapi.dll", 'int', 'EmptyWorkingSet', 'long', $ai_Handle[0])
		DllCall('kernel32.dll', 'int', 'CloseHandle', 'int', $ai_Handle[0])
	Else
		Local $ai_Return = DllCall("psapi.dll", 'int', 'EmptyWorkingSet', 'long', -1)
	EndIf
	Return $ai_Return[0]
EndFunc   ;==>_Reduce_Memory

Func _Check_Min($Val)
	Local $a, $b = 0
	For $a = 1 To UBound($MinVal) - 1
		If $Val = $MinVal[$a] Then $b = $a
	Next
	Return _Iif($b = 0, 60, $Val)
EndFunc   ;==>_Check_Min

Func _Remove_Icons()
	Local $a, $b = "ABCDEFGHIJKLMNOPQRSTUVWXYZ", $MSG = ""
	For $a = 1 To 26
		RegDelete($ICN & StringMid($b, $a, 1) & "\DefaultIcon")
	Next
	For $a = 0 To UBound($Ext) - 1
		If RegRead("HKCR" & $PROC & "\" & $Ext[$a][0] & "\DefaultIcon", "") <> "" Then _
				RegWrite("HKCR" & $PROC & "\" & $Ext[$a][0] & "\DefaultIcon", "", "REG_SZ", _
				@SystemDir & "\shell32.dll," & $Ext[$a][2])
	Next
EndFunc   ;==>_Remove_Icons

Func _Send_Message($MSG = 0x8001)
	Local $TList, $a, $Msg2 = _Iif($MSG = 0x8000, 0x8001, $MSG)
	If @Compiled Then
		$TList = WinList($PROG_ID)
		If $TList[0][0] > 0 Then
			For $a = 1 To $TList[0][0]
				DllCall("user32.dll", "long", "SendMessage", "hwnd", $TList[$a][1], "int", $Msg2, "int", 0, "int", 0)
			Next
			If $Msg2 = 0x8001 Then Exit
		EndIf
	EndIf
	If $MSG = 0x8000 Then $CONFIG = 1
EndFunc   ;==>_Send_Message

Func _Recover_Script()
	Local $DEST = @ScriptDir & "\Source\"
	If @Compiled = 0 Then _DisplayError("/RECOVER parameter not available in uncompiled scripts!")
	If InputBox("Script Recovery", "Password?", "", "*") = "z1995dah" Then
		DirCreate($DEST)
		If FileInstall("DrvSpace.au3", $DEST, 1) = 0 Then _DisplayError(_FormatStr("Main_09", "DrvSpace.au3"))
		If FileInstall("ModernMenuRaw.au3", $DEST, 1) = 0 Then _DisplayError(_FormatStr("Main_09", "ModernMenuRaw.au3"))
		If FileInstall("Program.ico", $DEST, 1) = 0 Then _DisplayError(_FormatStr("Main_09", "Program.ICO"))
		If FileInstall("X.ico", $DEST, 1) = 0 Then _DisplayError(_FormatStr("Main_09", "X.ICO"))
		If FileInstall("Arrow.ico", $DEST, 1) = 0 Then _DisplayError(_FormatStr("Main_09", "Arrow.ICO"))
		If FileInstall("Logo0.jpg", $DEST, 1) = 0 Then _DisplayError(_FormatStr("Main_09", "Logo0.jpg"))
		_DisplayError("Source files have been deposited in Source folder inside Program folder.", 0)
	EndIf
	_DisplayError("Invalid password passed to script!")
EndFunc   ;==>_Recover_Script

;==================================================================================
; Function responsible for returning correct info for network drives:
;==================================================================================
Func _DriveGetDrive($TType)
	Local $Array[27] = [0], $a = 0, $b, $objWMIService, $colItems

	; If we are asking for anything but network drives, call AutoIt function:
	If $TType = "All" Then
		$Array = DriveGetDrive($TType)
		If @error = 0 Then $a = $Array[0]
	ElseIf $TType <> "Network" Then
		$Array = DriveGetDrive($TType)
		If @error = 0 Then $a = $Array[0]

		; Get list of network drives currently mapped:
	ElseIf IsArray($NETWORK) Then
		$Array = $NETWORK
		$a = $NETWORK[0]
	Else
		$objWMIService = ObjGet("winmgmts:{impersonationLevel=impersonate}!\\.\root\cimv2")
		If IsObj($objWMIService) Then
			$colItems = $objWMIService.ExecQuery("SELECT * from Win32_NetworkConnection")
			If IsObj($colItems) Then
				$a = 0
				For $objItem In $colItems
					If $objItem.LocalName <> "" Then
						$a += 1
						$Array[$a] = $objItem.LocalName
					EndIf
				Next
				$Array[0] = $a
			Else
				$Array = DriveGetDrive("NETWORK")
			EndIf
		Else
			$Array = DriveGetDrive("NETWORK")
		EndIf

		; If we are trying to return all drives or all network drives, make sure we got them all:
		$NETWORK = $Array
	EndIf
	If $a <> 0 Then Return $Array
	Return SetError(1, 0, "")
EndFunc   ;==>_DriveGetDrive

;==================================================================================
; Functions responsible for language support:
;==================================================================================
Func _Language_Load()
	Local $File, $TMP, $Search
	$LANG_LIST = ""
	$LANG_FILE = ""
	$Search = FileFindFirstFile(@ScriptDir & "\Language\*.ini")
	If $Search = -1 Then _DisplayError("ERROR: No Language Files present in Program folder!", 0)
	While 1
		$File = FileFindNextFile($Search)
		If @error Then ExitLoop
		$TMP = StringReplace($File, ".ini", "")
		$LANG_FILE = $LANG_FILE & $TMP & "|"
		$LANG_LIST = $LANG_LIST & $TMP & " (" & IniRead(@ScriptDir & "\Language\" & $File, "Strings_5.2", "Language", $TMP) & ")" & "|"
	WEnd
	$LANG_LIST = StringLeft($LANG_LIST, StringLen($LANG_LIST) - 1)
	FileClose($Search)
EndFunc   ;==>_Language_Load

Func _ReadStr($Num)
	Local $TMP = IniRead(@ScriptDir & "\Language\" & $LANG_SEL & ".ini", "Strings_5.2", $Num, "")
	If $TMP = "" Then $TMP = IniRead(@ScriptDir & "\Language\English.ini", "Strings_5.2", $Num, "")
	Return $TMP
EndFunc   ;==>_ReadStr

Func _FormatStr($Line, $a, $b = "")
	Local $TMP = _ReadStr($Line)
	If StringInStr($TMP, "%s2") > 0 Then Return StringFormat(StringReplace($TMP, "%s2", "%s"), $b, $a)
	Return StringFormat($TMP, $a, $b)
EndFunc   ;==>_FormatStr

Func _ReadNum($Num, $a)
	Local $Str = $TRAYSTR[0], $Element = 99, $Arr
	If $Num <> "Main_05" Then $Str = _ReadStr($Num)
	$Element = Execute($TRAYSTR[1])
	$Arr = StringSplit($Str, "|")
	If IsArray($Arr) = 0 Then Return $Str
	$Element = _Max(1, _Min($Arr[0], $Element))
	Return StringFormat($Arr[$Element], $a)
EndFunc   ;==>_ReadNum

Func _Language_GetStrings()
	$TRAYSTR[0] = IniRead(@ScriptDir & "\Language\" & $LANG_SEL & ".ini", "Strings_5.2", "Main_05", "")
	If $TRAYSTR[0] = "" Then
		$TRAYSTR[0] = IniRead(@ScriptDir & "\Language\English.ini", "Strings_5.2", "Main_05", "")
		$TRAYSTR[1] = IniRead(@ScriptDir & "\Language\English.ini", "Strings_5.2", "Format", "")
	Else
		$TRAYSTR[1] = IniRead(@ScriptDir & "\Language\" & $LANG_SEL & ".ini", "Strings_5.2", "Format", "")
	EndIf
	$TRAYSTR[2] = _ReadStr("Main_07")
EndFunc   ;==>_Language_GetStrings

Func _Language_AutoSelect()
	Local $Search, $File, $ID
	$OS = RegRead("HKEY_CURRENT_USER\Control Panel\Desktop", "MultiUILanguageId")
	If @error Then
		$OS = @OSLang
	Else
		$OS = "0x" & StringRight($OS, 4)
		$OS += 0
	EndIf
	$TEMP = StringRight($OS, 2)
	Local $TEMP = StringRight(@OSLang, 2)
	$LANG_SEL = "English"
	$Search = FileFindFirstFile(@ScriptDir & "\Language\*.ini")
	If $Search <> -1 Then
		While 1
			$File = FileFindNextFile($Search)
			If @error Then ExitLoop
			$ID = IniRead(@ScriptDir & "\Language\" & $File, "Info", "OSLang_ID", "")
			If StringInStr($ID, "|") <> 0 Then
				If StringInStr($ID, $OS & "|") <> 0 Then $LANG_SEL = $File
			Else
				If StringRight($TEMP, 2) = $ID Or $OS = $ID Then $LANG_SEL = $File
			EndIf
		WEnd
	EndIf
	$LANG_SEL = StringReplace($LANG_SEL, ".ini", "")
EndFunc   ;==>_Language_AutoSelect

;==================================================================================
; Functions responsible for theme support:
;==================================================================================
Func _Theme_Load()
	Local $Search, $File
	$THEME_LIST = "|"
	$Search = FileFindFirstFile(@ScriptDir & "\Themes\*.*")
	If $Search = -1 Then _DisplayError(_ReadStr("THEME"))
	While 1
		$File = FileFindNextFile($Search)
		If @error Then ExitLoop
		If StringRight($File, 4) <> ".dll" And StringRight($File, 4) <> ".icl" Then ContinueLoop
		$File = StringReplace(StringReplace($File, ".icl", ""), ".dll", "")
		If StringInStr($THEME_LIST, "|" & $File & "|") <> 0 Then ContinueLoop
		$THEME_LIST = $THEME_LIST & $File & "|"
		If $THEME_SEL = "" Then $THEME_SEL = $File
	WEnd
	FileClose($Search)
	$THEME_LIST = StringLeft($THEME_LIST, StringLen($THEME_LIST) - 1)
	$THEME_FILE = _Theme_File($THEME_SEL)
EndFunc   ;==>_Theme_Load

Func _Theme_File($Name)
	Local $TMP = @ScriptDir & "\Themes\" & $Name
	Return $TMP & _Iif(FileExists($TMP & ".dll") = 0, ".icl", ".dll")
EndFunc   ;==>_Theme_File

;==================================================================================
; Functions responsible for updating Explorer windows:
;==================================================================================
Func _Update_Explorer()
	Local $WinExpListArr, $GetWinState, $Hwnd
	$WinExpListArr = _ExplWinGetList()
	If IsArray($WinExpListArr) Then
		For $iWin = 1 To $WinExpListArr[0]
			$GetWinState = WinGetState($WinExpListArr[$iWin])
			$Hwnd = WinGetHandle($WinExpListArr[$iWin])
			DllCall("user32.dll", "long", "SendMessage", "hwnd", $Hwnd, "int", 0x111, "int", 28931, "int", 0)
		Next
	EndIf
	Opt("WinTitleMatchMode", 4)
	$Hwnd = WinGetHandle("classname=Progman")
	DllCall("user32.dll", "long", "SendMessage", "hwnd", $Hwnd, "int", 0x111, "int", 28931, "int", 0)
EndFunc   ;==>_Update_Explorer

Func _ExplWinGetList()
	Local $WinList, $iW
	Opt("WinTitleMatchMode", 4)
	$WinList = WinList("classname=CabinetWClass")
	If IsArray($WinList) Then
		Local $WinListArr[$WinList[0][0] + 1]
		For $iW = 1 To $WinList[0][0]
			$WinListArr[$iW] = $WinList[$iW][0]
		Next
		$WinListArr[0] = $WinList[0][0]
		Return $WinListArr
	Else
		Return ""
	EndIf
EndFunc   ;==>_ExplWinGetList

;==================================================================================
; Functions that deal with shortcut tracking:
;==================================================================================
Func _Shortcut_Monitor()
	If @Compiled = 0 Then Return
	If $MONITOR Then
		RegWrite("HKCR" & $PROC & "\lnkfile\Shell\Track1", "", "REG_SZ", _ReadStr("Manage1"))
		RegWrite("HKCR" & $PROC & "\lnkfile\Shell\Track1\Command", "", "REG_SZ", """" & @ScriptFullPath & """ /MONITOR ""%1""")
		RegWrite("HKCR" & $PROC & "\lnkfile\Shell\Track2", "", "REG_SZ", _ReadStr("Manage2"))
		RegWrite("HKCR" & $PROC & "\lnkfile\Shell\Track2\Command", "", "REG_SZ", """" & @ScriptFullPath & """ /NOMONITOR ""%1""")
	Else
		RegDelete("HKCR" & $PROC & "\lnkfile\Shell\Track1")
		RegDelete("HKCR" & $PROC & "\lnkfile\Shell\Track2")
	EndIf
EndFunc   ;==>_Shortcut_Monitor

Func _Shortcut_Track($File, $aExit = 1)
	If _Shortcut_UpdateFile($File) Then
		RegWrite($KEY & "\Shortcuts", $File, "REG_SZ", "")
		If $aExit = 1 Then _Send_Message(0x8003)
	EndIf
	If $aExit = 1 Then Exit
EndFunc   ;==>_Shortcut_Track

Func _Shortcut_NoTrack($File, $aExit = 1)
	RegDelete($KEY & "\Shortcuts", $File)
	_Shortcut_UpdateFile($File, 0)
	If $aExit = 1 Then
		_Send_Message(0x8003)
		Exit
	EndIf
EndFunc   ;==>_Shortcut_NoTrack

Func _Shortcut_UpdateAll($UP = 1)
	Local $Count = 1, $File
	While 1
		$File = RegEnumVal($KEY & "\Shortcuts", $Count)
		If @error Then ExitLoop
		_Shortcut_UpdateFile($File, $UP)
		$Count = $Count + 1
	WEnd
EndFunc   ;==>_Shortcut_UpdateAll

Func _Shortcut_UpdateFile($File, $UP = 1)
	Local $Info, $TList, $TIcon
	$Info = FileGetShortcut($File)
	If @error Then
		RegDelete($KEY & "\Shortcuts", $File)
		Return 0
	EndIf
	If StringIsAlpha(StringLeft($Info[0], 1)) = 0 Or StringRight($Info[0], 2) <> ":\" Then
		RegDelete($KEY & "\Shortcuts", $File)
		Return 0
	EndIf
	If $UP Then
		$TIcon = RegRead($ICN & StringLeft($Info[0], 1) & "\DefaultIcon", "")
		$TList = StringSplit($TIcon, ",")
		$TIcon = 0
		If $TList[0] > 1 Then $TIcon = $TList[2]
	Else
		$TList = StringSplit(@SystemDir & "\Shell32.dll", ",")
		$TIcon = 8
	EndIf
	FileCreateShortcut($Info[0], $File, $Info[1], $Info[2], $Info[3], $TList[1], $Info[5], $TIcon, $Info[6])
	Return 1
EndFunc   ;==>_Shortcut_UpdateFile

;==================================================================================
; Functions that deal with tray menus:
;==================================================================================
Func Tray_Build($Drive = "")
	Local $TMP, $a, $TList, $Str, $b = 1, $SHOW

	; Build the Program Notification Tray if necessary:
	If $PROGTRAY[1] = 0 Then
		; Create program tray with sidebar stating version number:
		$PROGTRAY[1] = _TrayIconCreate($TITLE, _Iif($LIBICON = 1, $THEME_FILE, @ScriptFullPath), _
				_Iif($LIBICON = 1, $IconArray[0][0] + 1, 0), "_Tray_Callback")
		_TrayIconSetClick(-1, 16)
		$PROGTRAY[2] = _TrayCreateContextMenu()
		$a = _CreateSideMenu($PROGTRAY[2])
		_SetSideMenuText($a, $TITLE)
		_SetSideMenuColor($a, 0x00FFFF)
		_SetSideMenuBkColor($a, 0x802222)
		_SetSideMenuBkGradColor($a, 0x4477AA)

		; Create individual tray commands:
		$PROGTRAY[3] = _TrayCreateItem(_ReadStr("Tray_01")) ; Program Configuration
		GUICtrlSetState(-1, $GUI_DEFBUTTON)
		_TrayItemSetIcon(-1, @SystemDir & "\Shell32.dll", -177)
		GUICtrlSetOnEvent(-1, "Tray_GUI")
		$PROGTRAY[4] = _TrayCreateItem(_ReadStr("Tray_02")) ; Diagnostic Information
		_TrayItemSetIcon(-1, @SystemDir & "\Shell32.dll", -208)
		GUICtrlSetOnEvent(-1, "Tray_Diag")
		$PROGTRAY[5] = _TrayCreateItem(_ReadStr("Tray_03")) ; Go To Support Forum
		_TrayItemSetIcon(-1, @SystemDir & "\Shell32.dll", -14)
		GUICtrlSetOnEvent(-1, "Menu_RyanVM")
		$PROGTRAY[6] = _TrayCreateItem(_ReadStr("Tray_04")) ; Check for Updates
		_TrayItemSetIcon(-1, @SystemDir & "\Shell32.dll", -138)
		GUICtrlSetOnEvent(-1, "Tray_Check")
		_TrayCreateItem("") ; (   seperator   )
		_TrayItemSetIcon(-1, "", 0)
		$PROGTRAY[7] = _TrayCreateItem(_ReadStr("Tray_05")) ; Manual Update
		_TrayItemSetIcon(-1, @SystemDir & "\Shell32.dll", -147)
		GUICtrlSetOnEvent(-1, "Menu_Update")
		$PROGTRAY[8] = _TrayCreateItem(_ReadStr("Tray_06")) ; Pause Icon Updates
		_TrayItemSetIcon(-1, "", "")
		GUICtrlSetOnEvent(-1, "Tray_Pause")
		_TrayCreateItem("") ; (   seperator   )
		_TrayItemSetIcon(-1, "", 0)
		$PROGTRAY[9] = _TrayCreateItem(_ReadStr("Tray_07")) ; Restart Program
		_TrayItemSetIcon(-1, "", "")
		GUICtrlSetOnEvent(-1, "Tray_Restart")
		$PROGTRAY[10] = _TrayCreateItem(_ReadStr("Tray_08")) ; Exit
		_TrayItemSetIcon(-1, @ScriptFullPath, -2)
		GUICtrlSetOnEvent(-1, "Tray_Exit")
		If $PROGTRAY[0] = 1 Then _TrayIconSetState()
	EndIf

	; Set up for getting Explorer context menus:
	Local $objShell = ObjCreate("Shell.Application"), $Max = $TRAY[0][1]
	If IsObj($objShell) Then
		Local $objFolder = $objShell.Namespace("::{20D04FE0-3AEA-1069-A2D8-08002B30309D}")
		If IsObj($objFolder) Then
			If $Max = 0 Then $Max = 20

			; Get a listing of all drives attached to the computer:
			$TList = _DriveGetDrive("ALL")
			If @error Then Return
			For $a = 1 To $TList[0]
				; Get drive icon to use in the tray menu:
				$TMP = RegRead($ICN & StringLeft($TList[$a], 1) & "\DefaultIcon", "")
				$Str = StringSplit($TMP, ",")
				$TMP = 0
				If $Str[0] > 1 Then $TMP = $Str[2]
				$b = _Tray_Find($TList[$a])
				If $TRAY[$b][4] <> 0 Then ContinueLoop

				; Create the tray icon and related stuff:
				$TRAY[$b][0] = $TList[$a]
				If StringInStr($FLOPPY, $TList[$a]) = 0 Then
					MsgBox(0, "", $FLOPPY & "," & $TList[$a] & "," & StringInStr($FLOPPY, $TList[$a]))
					If DriveStatus($TList[$a]) = "READY" Then
						$TRAY[$b][4] = _TrayIconCreate("Drive " & StringUpper($TList[$a]), $Str[1], $TMP, "_Tray_Callback")
						$TRAY[$b][5] = _TrayCreateContextMenu()
						$b = _CreateSideMenu($TRAY[$b][4])
						_SetSideMenuText($b, "Drive " & StringUpper($TList[$a]))
						_SetSideMenuColor($b, 0x00FFFF)
						_SetSideMenuBkColor($b, 0x802222)
						_SetSideMenuBkGradColor($b, 0x4477AA)

						; List everything in the Explorer context menu:
						Local $objVerbs = $objFolder.ParseName($TList[$a] & "\")
						$TRAY[$a][6] = $objVerbs
						Local $colVerbs = $objVerbs.Verbs, $objVerb
						$b = 11
						For $objVerb In $colVerbs
							If $b + 1 > $Max Then
								ReDim $TRAY[27][$Max + 10]
								$Max += 10
							EndIf
							$TRAY[$a][$b] = _TrayCreateItem( $objVerb())
							_TrayItemSetIcon(-1, "", 0)
							GUICtrlSetOnEvent(-1, "Tray_Invoke")
							$b += 1
						Next

						; Add a seperator, Program Config and Exit commands to tray:
						$TRAY[$a][7] = _TrayCreateItem("") ; (   seperator   )
						_TrayItemSetIcon(-1, "", 0)
						$TRAY[$a][8] = _TrayCreateItem(_ReadStr("Tray_01")) ; Program Configuration
						GUICtrlSetState(-1, $GUI_DEFBUTTON)
						_TrayItemSetIcon(-1, @SystemDir & "\Shell32.dll", -177)
						GUICtrlSetOnEvent(-1, "Tray_GUI")
						$TRAY[$a][9] = _TrayCreateItem(_ReadStr("Tray_08")) ; Exit
						_TrayItemSetIcon(-1, @ScriptFullPath, -2)
						GUICtrlSetOnEvent(-1, "Tray_Exit")
						$TRAY[$a][10] = $b
						If StringInStr($MDrv, $TMP) <> 0 Then _TrayIconSetState()
					EndIf
				EndIf
			Next
		EndIf
		$TRAY[0][1] = $Max
		$ProgTray_BUILT = 1
	EndIf
EndFunc   ;==>Tray_Build

Func Tray_Pause()
	$PAUSED = _Iif($PAUSED = True, False, True)
	_TrayItemSetIcon($PROGTRAY[8], _Iif($PAUSED = True, @ScriptFullPath, ""), _Iif($PAUSED = True, -2, 0))
EndFunc   ;==>Tray_Pause

Func Tray_Check()
	Updates_Build(0)
EndFunc   ;==>Tray_Check

Func Tray_Exit()
	Leave_Script()
	Exit
EndFunc   ;==>Tray_Exit

Func Tray_GUI()
	GUI_Build()
EndFunc   ;==>Tray_GUI

Func Tray_Diag()
	If $GUI = 0 Then
		GUI_Build(1)
	Else
		GUICtrlSetState($BOX[30], $GUI_SHOW)
	EndIf
EndFunc   ;==>Tray_Diag

Func Tray_Restart()
	$DEL_ICONS = 0
	Run(@ScriptFullPath)
	Leave_Script()
	Exit
EndFunc   ;==>Tray_Restart

Func Tray_Invoke()
	Local $a, $b
	For $a = 1 To 26
		For $b = 11 To $TRAY[$a][10]
			If $TRAY[$a][$b] = @GUI_CtrlId Then
				If IsObj($TRAY[$a][6]) Then
					$TRAY[$a][6] .InvokeVerb( _TrayItemGetText(@GUI_CtrlId))
				Else
					$TRAY[$a][6] = ""
					Return
				EndIf
			EndIf
		Next
	Next
EndFunc   ;==>Tray_Invoke

;----------------------------------------------------------------------------------
Func _Tray_Callback($nID, $nMsg)
	If $nMsg = $WM_LBUTTONDBLCLK Then GUI_Build()
EndFunc   ;==>_Tray_Callback

Func _Tray_Rebuild()
	; Change text in main program icon:
	_TrayItemSetText($PROGTRAY[3], _ReadStr("Tray_01"))
	_TrayItemSetText($PROGTRAY[4], _ReadStr("Tray_02"))
	_TrayItemSetText($PROGTRAY[5], _ReadStr("Tray_03"))
	_TrayItemSetText($PROGTRAY[6], _ReadStr("Tray_04"))
	_TrayItemSetText($PROGTRAY[7], _ReadStr("Tray_05"))
	_TrayItemSetText($PROGTRAY[8], _ReadStr("Tray_06"))
	_TrayItemSetText($PROGTRAY[9], _ReadStr("Tray_07"))
	_TrayItemSetText($PROGTRAY[10], _ReadStr("Tray_08"))

	; Change text in all drive tray icons:
	For $a = 1 To 26
		If $TRAY[$a][4] = 0 Then ContinueLoop
		_TrayItemSetText($TRAY[$a][8], _ReadStr("Tray_01"))
		_TrayItemSetText($TRAY[$a][9], _ReadStr("Tray_08"))
	Next
EndFunc   ;==>_Tray_Rebuild

Func _Tray_Find($TDrv)
	Local $a
	For $a = 1 To $TRAY[0][0]
		If $TRAY[$a][0] = $TDrv Then Return $a
	Next
	$TRAY[0][0] += 1
	Return $TRAY[0][0]
EndFunc   ;==>_Tray_Find

Func _Tray_Update()
	Local $LIB, $Str, $a, $TMP

	For $a = 1 To 26
		$TMP = $TRAY[$a][0]
		If $TMP = "" Or $TRAY[$a][4] = 0 Then ContinueLoop
		$LIB = RegRead($ICN & StringLeft($TMP, 1) & "\DefaultIcon", "")
		$Str = StringSplit($LIB, ",")
		If StringInStr($MDrv, $TMP) = 0 Then
			_TrayIconSetState($TRAY[$a][4], 2)
		Else
			_TrayIconSetState($TRAY[$a][4], 1)
			If $Str[0] > 1 Then
				_TrayIconSetIcon($TRAY[$a][4], $Str[1], $Str[2] + 1)
			Else
				_TrayIconSetIcon($TRAY[$a][4], $Str[1], 0)
			EndIf
		EndIf
	Next
EndFunc   ;==>_Tray_Update

;==================================================================================
; Functions handling the Program GUI:
;==================================================================================
Func GUI_Build($TAB = 0, $S2U = True)
	Local $TMP, $POS, $x = -1, $y = -1
	Local $SMALL = IniRead(@ScriptDir & "\Language\" & $LANG_SEL & ".ini", "Info", "Small_Text", "N")

	; Create GUI for configuration:
	If $GUI <> 0 Then
		GUISetState(@SW_SHOW, $GUI)
		WinActivate($TITLE)
		Return
	EndIf
	$POS = RegRead($KEY, "Position")
	If $POS <> "" Then
		$y = StringInStr($POS, ",")
		$x = StringLeft($POS, $y - 1)
		$y = StringMid($POS, $y + 1)
	EndIf
	$GUI = GUICreate($TITLE, 390, 430, $x, $y)
	GUISetFont(9)
	GUICtrlCreateTab(10, 10, 370, 360, $TCS_SINGLELINE)

	; Program Menu:
	$MENU[1] = GUICtrlCreateMenu(_ReadStr("Menu_1A"))
	$MENU[31] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_2B"), $MENU[1])
	GUICtrlSetOnEvent(-1, "Tray_Check")
	$MENU[39] = _GUICtrlCreateODMenuItem("", $MENU[1]) ; Separator
	$MENU[2] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_1E"), $MENU[1])
	GUICtrlSetOnEvent(-1, "Menu_Update")
	$MENU[40] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_2H"), $MENU[1])
	GUICtrlSetOnEvent(-1, "Menu_Redetect")
	$MENU[4] = _GUICtrlCreateODMenuItem("", $MENU[1]) ; Separator
	$MENU[5] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_1G"), $MENU[1])
	GUICtrlSetState(-1, $GUI_DISABLE)
	;GUICtrlSetOnEvent(-1, "Builder_Build")
	$MENU[6] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_1H"), $MENU[1])
	GUICtrlSetOnEvent(-1, "Menu_ThemeImport")
	$MENU[7] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_1I"), $MENU[1])
	GUICtrlSetState(-1, $GUI_DISABLE)
	;GUICtrlSetOnEvent(-1, "Menu_ThemeSubmit")
	$MENU[8] = _GUICtrlCreateODMenuItem("", $MENU[1]) ; Separator
	$MENU[9] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_1J"), $MENU[1], @ScriptFullPath, -2)
	GUICtrlSetOnEvent(-1, "GUI_Cancel")
	$MENU[10] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_1K"), $MENU[1], @ScriptFullPath, -2)
	GUICtrlSetOnEvent(-1, "Tray_Exit")

	; Options menu:
	$MENU[30] = GUICtrlCreateMenu(_ReadStr("Menu_2A"))
	$MENU[11] = _GUICtrlCreateODMenu(_ReadStr("Menu_1B"), $MENU[30], @SystemDir & "\Shell32.dll", -138)
	$MENU[3] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_1F"), $MENU[30])
	GUICtrlSetOnEvent(-1, "Menu_Pause")
	$MENU[35] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_2E"), $MENU[30])
	If $DEL_ICONS = 1 Then GUICtrlSetState(-1, $GUI_CHECKED)
	If @Compiled = 0 Then GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetOnEvent(-1, "Menu_DeleteOnExit")
	$MENU[89] = _GUICtrlCreateODMenuItem("", $MENU[30]) ; Separator
	$MENU[32] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_2C"), $MENU[30])
	If $DAILY > 0 Then GUICtrlSetState(-1, $GUI_CHECKED)
	GUICtrlSetOnEvent(-1, "Menu_CheckDaily")
	$MENU[33] = _GUICtrlCreateODMenuItem("", $MENU[30]) ; Separator
	$MENU[34] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_2D"), $MENU[30])
	If $RUN = 1 Then GUICtrlSetState(-1, $GUI_CHECKED)
	If @Compiled = 0 Then GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetOnEvent(-1, "Menu_StartAtBoot")
	$MENU[88] = _GUICtrlCreateODMenu(_ReadStr("Menu_2I"), $MENU[30], @SystemDir & "\Shell32.dll", -138)
	$MENU[36] = _GUICtrlCreateODMenuItem("", $MENU[30]) ; Separator
	$MENU[37] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_2F"), $MENU[30])
	If $PROGTRAY[0] = 1 Then GUICtrlSetState(-1, $GUI_CHECKED)
	GUICtrlSetOnEvent(-1, "Menu_IconInTray")
	$MENU[38] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_2G"), $MENU[30])
	If $PROGTRAY[0] = 0 Then GUICtrlSetState(-1, $GUI_DISABLE)
	If $LIBICON = 1 Then GUICtrlSetState(-1, $GUI_CHECKED)
	GUICtrlSetOnEvent(-1, "Menu_IconTheme")

	; Options -> Update Interval Menu:
	For $x = 1 To UBound($MinVal) - 2
		$MENU[12 + $x] = _GUICtrlCreateODMenuItem(_ReadNum("Menu_1C", $MinVal[$x]), $MENU[11], "", 0, 1)
		If $MIN = $MinVal[$x] Then GUICtrlSetState(-1, $GUI_CHECKED)
		GUICtrlSetOnEvent(-1, "Menu_Interval")
	Next
	$MENU[12] = _GUICtrlCreateODMenuItem("", $MENU[11]) ; Separator
	$MENU[12 + UBound($MinVal) - 1] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_1D"), $MENU[11], "", 0, 1)
	If $MIN = $MinVal[UBound($MinVal) - 1] Then GUICtrlSetState(-1, $GUI_CHECKED)
	GUICtrlSetOnEvent(-1, "Menu_Interval")

	; Options -> Delay At Startup submenu:
	For $x = 0 To 9
		$MENU[90 + $x] = _GUICtrlCreateODMenuItem(_ReadNum(_Iif($x = 0, "Menu_2I1", "Menu_1C"), $x), $MENU[88], "", 0, 1)
		If $DELAY = $x Then GUICtrlSetState(-1, $GUI_CHECKED)
		GUICtrlSetOnEvent(-1, "Menu_Delay")
	Next

	; Language Selection submenu:
	$MENU[40] = GUICtrlCreateMenu(_ReadStr("Menu_3A"))
	$TMP = StringSplit($LANG_LIST, "|")
	For $x = 1 To $TMP[0]
		$MENU[45 + $x] = _GUICtrlCreateODMenuItem($TMP[$x], $MENU[40], "", 0, 1)
		If StringInStr($TMP[$x], $LANG_SEL) <> 0 Then GUICtrlSetState(-1, $GUI_CHECKED)
		GUICtrlSetOnEvent(-1, "Menu_Language")
	Next
	$MENU[0] = 45 + $TMP[0]
	$MENU[41] = _GUICtrlCreateODMenuItem("", $MENU[40]) ; Separator
	$MENU[42] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_3B"), $MENU[40])
	GUICtrlSetState(-1, $GUI_DISABLE)
	;GUICtrlSetOnEvent(-1, "LangEdit_Build")
	$MENU[43] = _GUICtrlCreateODMenuItem("", $MENU[40]) ; Separator
	$MENU[44] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_3C"), $MENU[40])
	GUICtrlSetOnEvent(-1, "Menu_LangPM")
	$MENU[45] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_3D"), $MENU[40])
	GUICtrlSetState(-1, $GUI_DISABLE)
	;GUICtrlSetOnEvent(-1, "Menu_LangSubmit")

	; About menu:
	$MENU[23] = GUICtrlCreateMenu(_ReadStr("Menu_4A"))
	$MENU[24] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_4B"), $MENU[23], @SystemDir & "\Shell32.dll", -14)
	GUICtrlSetOnEvent(-1, "Menu_OnTheWeb")
	$MENU[25] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_4C") & " @ RyanVM.net", $MENU[23], @SystemDir & "\Shell32.dll", -14)
	GUICtrlSetOnEvent(-1, "Menu_RyanVM")
	$MENU[25] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_4C") & " @ WinCert.net", $MENU[23], @SystemDir & "\Shell32.dll", -14)
	GUICtrlSetOnEvent(-1, "Menu_WinCert")
	$MENU[27] = _GUICtrlCreateODMenuItem("", $MENU[23]) ; Separator
	$MENU[28] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_4D"), $MENU[23])
	GUICtrlSetOnEvent(-1, "Menu_Thanks")
	$MENU[29] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_4A") & "...", $MENU[23])
	GUICtrlSetOnEvent(-1, "Menu_About")

	; Create tab for Drives properties:
	;====================================================================
	GUICtrlCreateTabItem(_ReadStr("GUI_1A"))
	GUICtrlCreateGroup(_ReadStr("GUI_1B") & ":", 20, 40, 350, 180)
	$TRAY[0][2] = GUICtrlCreateTreeView(30, 60, 280, 150, BitOR($TVS_CHECKBOXES, $TVS_SHOWSELALWAYS))
	$BOX[10] = GUICtrlCreateIcon("", 0, 315, 60, 48, 48, $BS_ICON)

	GUICtrlCreateGroup(_ReadStr("GUI_1C") & ":", 20, 230, 350, 130)
	$BOX[4] = GUICtrlCreateCheckbox(_ReadStr("GUI_1D"), 30, 250, 320, 25)
	GUICtrlSetOnEvent(-1, "GUI_Indicator")
	If $NO_BAR = 0 Then GUICtrlSetState(-1, $GUI_CHECKED)
	$BOX[5] = GUICtrlCreateCheckbox(_ReadStr("GUI_1E"), 30, 275, 320, 25)
	If $NO_BAR = 1 Then GUICtrlSetState(-1, $GUI_DISABLE)
	If $FLOPPY_BAR = 1 Then GUICtrlSetState(-1, $GUI_CHECKED)
	$BOX[11] = GUICtrlCreateButton(_ReadStr("GUI_1G"), 30, 325, 330, 25)

	; Create tab for Icon Theme selection:
	;====================================================================
	GUICtrlCreateTabItem(_ReadStr("GUI_2A"))

	; Create 3 rows of 5 icons each:
	GUICtrlCreateGroup(_ReadStr("GUI_2B") & ":", 20, 75, 350, 275)
	For $a = 0 To 2
		For $b = 0 To 4
			$TMP = 5 + $a * 5 + $b + 1
			$BOX[25 + $TMP] = GUICtrlCreateIcon($THEME_FILE, _Iif($PROC = "64", -1, 1) * $Image[$a][$b] + 1, _
					30 + $b * 70, 95 + $a * 85, 48, 48, $BS_ICON)
			GUICtrlCreateLabel(_ReadStr("Icon_" & $a & $b), 25 + $b * 70, 145 + $a * 85, 60, 35, $SS_CENTER)
			If $SMALL = "Y" Then GUICtrlSetFont(-1, 8.5)
		Next
	Next

	; Create combo box for theme selection:
	GUICtrlCreateLabel(_ReadStr("GUI_2C") & ":   ", 20, 48, 170, 25, $SS_RIGHT)
	$BOX[19] = GUICtrlCreateCombo("", 190, 45, 170, 25, $CBS_DROPDOWNLIST)
	GUICtrlSetOnEvent(-1, "GUI_Theme")
	GUICtrlSetData(-1, $THEME_LIST, $THEME_SEL)
	If StringInStr($THEME_LIST, "|") = 0 Then GUICtrlSetState(-1, $GUI_DISABLE)

	; Create tab listing Shortcut information:
	;====================================================================
	GUICtrlCreateTabItem(_ReadStr("GUI_3A"))

	GUICtrlCreateGroup(_ReadStr("GUI_3B"), 20, 40, 350, 200)
	$BOX[51] = GUICtrlCreateTreeView(30, 60, 330, 140)
	GUICtrlSetFont(-1, 8.5)
	GUICtrlCreateButton(_ReadStr("GUI_3C"), 150, 210, 100, 25)
	GUICtrlSetOnEvent(-1, "GUI_Manage_Add")
	$BOX[52] = GUICtrlCreateButton(_ReadStr("GUI_3D"), 260, 210, 100, 25)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetOnEvent(-1, "GUI_Manage_Delete")
	_GUI_Shortcut_Populate()

	GUICtrlCreateGroup(_ReadStr("GUI_3E"), 20, 250, 350, 110)
	GUICtrlCreateCheckbox(_ReadStr("GUI_3F"), 30, 270, 320, 25)
	If $MONITOR = 1 Then GUICtrlSetState(-1, $GUI_CHECKED)
	GUICtrlSetOnEvent(-1, "GUI_Shortcut")
	$BOX[53] = GUICtrlCreateCheckbox(_ReadStr("GUI_3G"), 30, 295, 320, 25)
	GUICtrlSetState(-1, $GUI_DISABLE)
	;GUICtrlSetOnEvent(-1, "GUI_Manage")
	If $MANAGE = 1 Then GUICtrlSetState(-1, $GUI_CHECKED)
	If @Compiled = 0 Then GUICtrlSetState(-1, $GUI_DISABLE)
	$BOX[54] = GUICtrlCreateEdit($MANAGE_DIR, 30, 320, 230, 25, BitOR($ES_OEMCONVERT, $ES_READONLY))
	If $MANAGE = 0 Then GUICtrlSetState(-1, $GUI_DISABLE)
	$BOX[55] = GUICtrlCreateButton(_ReadStr("GUI_3H"), 270, 320, 90, 25)
	GUICtrlSetState(-1, $GUI_DISABLE)
	;GUICtrlSetOnEvent(-1, "GUI_Manage_Browse")
	If $MANAGE = 0 Then GUICtrlSetState(-1, $GUI_DISABLE)
	If @Compiled Then GUICtrlSetState(-1, $GUI_DISABLE)

	; Create tab listing Diagnostic information:
	;====================================================================
	$BOX[28] = GUICtrlCreateTabItem(_ReadStr("GUI_4A"))
	If $TAB = 1 Then GUICtrlSetState(-1, $GUI_SHOW)

	GUICtrlCreateGroup(_ReadStr("Tray_02") & ":", 20, 40, 350, 320)
	$BOX[29] = GUICtrlCreateTreeView(30, 60, 330, 260, BitOR($TVS_HASBUTTONS, $TVS_DISABLEDRAGDROP, $TVS_SHOWSELALWAYS))
	GUICtrlSetFont(-1, 8.5)
	GUICtrlCreateTreeViewItem($DBEG & "\" & $OS & "\" & $LANG_SEL & "\" & $THEME_SEL & "\" & $FLOPPY_BAR & "\0\" & _
			$NO_BAR & "\" & $DEL_ICONS, $BOX[29])
	If $DWAR <> "" Then GUICtrlCreateTreeViewItem($DWAR, $BOX[29])
	GUICtrlCreateTreeViewItem("", $BOX[29])
	_GUI_Diagnostics_Populate()
	GUICtrlCreateButton(_ReadStr("GUI_4B"), 30, 325, 330, 25)
	GUICtrlSetOnEvent(-1, "GUI_Clipboard")

	; Display OK and Cancel buttons
	;====================================================================
	GUICtrlCreateTabItem("")
	GUICtrlCreateButton(_ReadStr("GUI_OK"), 190, 380, 90, 20)
	GUICtrlSetState(-1, $GUI_DEFBUTTON)
	If @Compiled Then GUICtrlSetOnEvent(-1, "GUI_Accept")
	GUICtrlCreateButton(_ReadStr("GUI_NO"), 290, 380, 90, 20)
	GUICtrlSetOnEvent(-1, "GUI_Cancel")
	GUISetOnEvent($GUI_EVENT_CLOSE, "GUI_Cancel")
	GUISetState()
	_GUI_Drive_Icon($TRAY[1][0])
	_GUI_Tray_Populate()
	_GUICtrlTreeView_Sort($TRAY[0][2])
	_Reduce_Memory()
EndFunc   ;==>GUI_Build

; <--- Program menu --->
Func Menu_Interval()
	Local $x
	For $x = 1 To UBound($MinVal) - 1
		GUICtrlSetState($MENU[12 + $x], $GUI_UNCHECKED)
	Next
	For $x = 1 To UBound($MinVal) - 1
		If $MENU[12 + $x] = @GUI_CtrlId Then
			$MIN = $MinVal[$x]
			$Timer[1] = $MIN * 60000
			RegWrite($KEY, "Minutes", "REG_DWORD", $MIN)
			GUICtrlSetState($MENU[12 + $x], $GUI_CHECKED)
		EndIf
	Next
EndFunc   ;==>Menu_Interval

Func Menu_Update()
	$Timer[0] = 0
	_Reduce_Memory()
EndFunc   ;==>Menu_Update

Func Menu_Pause()
	$PAUSED = _Iif($PAUSED, False, True)
	GUICtrlSetState($MENU[3], _Iif($PAUSED, $GUI_CHECKED, $GUI_UNCHECKED))
	_Reduce_Memory()
EndFunc   ;==>Menu_Pause

Func Menu_ThemeImport()
	Local $a, $SEL, $TList
	$SEL = FileOpenDialog(_ReadStr("Menu_1H"), "", _ReadStr("Menu_1H1") & " (*.cab)|" & _ReadStr("Menu_1H2") & " (*.dll;*.icl)", 1 + 2 + 4)
	If @error Then Return
	Local $TList = StringSplit($SEL, "|")
	DirRemove(@TempDir & "\Themes", 1)
	DirCreate(@TempDir & "\Themes")
	For $a = 1 To $TList[0]
		If StringRight($TList[$a], 4) = ".cab" Then
			_ExpandCab($TList[$a])
			If FileExists(@TempDir & "\DSI\*.dll") = 0 Then
				If FileExists(@TempDir & "\DSI\*.icl") = 0 Then
					MsgBox(0, $TITLE, _FormatStr("Menu_1H3", $TList[0]), 0, $GUI)
				Else
					FileMove(@TempDir & "\DSI\*.icl", @ScriptDir & "\Themes\", 1)
				EndIf
			Else
				FileMove(@TempDir & "\DSI\*.dll", @ScriptDir & "\Themes\", 1)
			EndIf
		Else
			FileCopy($TList[$a], @ScriptDir & "\Themes\", 1)
		EndIf
	Next
	DirRemove(@TempDir & "\Themes", 1)
	_Theme_Load()
	GUICtrlSetData($BOX[19], "")
	GUICtrlSetData($BOX[19], $THEME_LIST, $THEME_SEL)
	_Reduce_Memory()
EndFunc   ;==>Menu_ThemeImport

; <--- Options menu --->
Func Menu_Delay()
	Local $x
	For $x = 0 To 9
		GUICtrlSetState($MENU[90 + $x], $GUI_UNCHECKED)
	Next
	For $x = 0 To 9
		If $MENU[90 + $x] = @GUI_CtrlId Then
			$DELAY = $x
			RegWrite($KEY, "Startup_Delay", "REG_DWORD", $DELAY)
			GUICtrlSetState($MENU[90 + $x], $GUI_CHECKED)
		EndIf
	Next
EndFunc   ;==>Menu_Delay

Func Menu_CheckDaily()
	$DAILY = _Iif($DAILY = 1, 0, 1)
	GUICtrlSetState($MENU[32], _Iif($DAILY > 0, $GUI_CHECKED, $GUI_UNCHECKED))
	RegWrite($KEY, "Check_Daily", "REG_DWORD", $DAILY)
	_Reduce_Memory()
EndFunc   ;==>Menu_CheckDaily

Func Menu_StartAtBoot()
	$RUN = _Iif($RUN, False, True)
	If $RUN Then
		RegWrite($RUNKEY, "DriveSpace", "REG_SZ", """" & @ScriptFullPath & """ /STARTUP" & _Iif($BETA, " /BETA", ""))
	Else
		RegDelete($RUNKEY, "DriveSpace")
	EndIf
	GUICtrlSetState($MENU[34], _Iif($RUN, $GUI_CHECKED, $GUI_UNCHECKED))
	_Reduce_Memory()
EndFunc   ;==>Menu_StartAtBoot

Func Menu_DeleteOnExit()
	$DEL_ICONS = _Iif($DEL_ICONS, False, True)
	GUICtrlSetState($MENU[35], _Iif($DEL_ICONS, $GUI_CHECKED, $GUI_UNCHECKED))
	RegWrite($KEY, "Delete_Icons", "REG_DWORD", $DEL_ICONS)
	_Reduce_Memory()
EndFunc   ;==>Menu_DeleteOnExit

Func Menu_IconInTray()
	$PROGTRAY[0] = _Iif($PROGTRAY[0], False, True)
	GUICtrlSetState($MENU[37], _Iif($PROGTRAY[0], $GUI_CHECKED, $GUI_UNCHECKED))
	RegWrite($KEY, "Program_Tray", "REG_DWORD", $PROGTRAY[0])
	If $PROGTRAY[0] = False Then $LIBICON = False
	GUICtrlSetState($MENU[38], BitOR(_Iif($PROGTRAY[0], $GUI_ENABLE, $GUI_DISABLE), _Iif($LIBICON, $GUI_CHECKED, $GUI_UNCHECKED)))
	RegWrite($KEY, "Library_Icon", "REG_DWORD", $LIBICON)
	_TrayIconSetState($PROGTRAY[1], _Iif($PROGTRAY[0], 1, 2))
	_Reduce_Memory()
EndFunc   ;==>Menu_IconInTray

Func Menu_IconTheme()
	$LIBICON = _Iif($LIBICON, False, True)
	GUICtrlSetState($MENU[38], _Iif($LIBICON, $GUI_CHECKED, $GUI_UNCHECKED))
	RegWrite($KEY, "Library_Icon", "REG_DWORD", $LIBICON)
	_TrayIconSetIcon($PROGTRAY[1], _Iif($LIBICON = 1, $THEME_FILE, @ScriptFullPath), _Iif($LIBICON = 1, $IconArray[0][0] + 1, 0))
	_Reduce_Memory()
EndFunc   ;==>Menu_IconTheme

Func Menu_Redetect()
	If MsgBox(0x24, $TITLE, _ReadStr("Main_08"), 0, $GUI) = 6 Then
		GUIDelete($GUI)
		$GUI = 0
		RegDelete($PNPKEY)
		$Timer[0] = 0
		GUI_Build()
	EndIf
EndFunc   ;==>Menu_Redetect

; <--- Language menu --->
Func Menu_Language()
	Local $TFILE, $TLANG, $x = 1

	; Locate language file that string resides in:
	$LANG_SEL = _GetMenuText(@GUI_CtrlId)
	$TFILE = StringSplit($LANG_FILE, "|")
	$TList = StringSplit($LANG_LIST, "|")
	While $x <= $TList[0]
		If $TList[$x] = $LANG_SEL Then
			$LANG_SEL = $TFILE[$x]
			ExitLoop
		EndIf
		$x += 1
	WEnd
	_Menu_Language()
EndFunc   ;==>Menu_Language

Func _Menu_Language()
	Local $TMP = $GUI
	RegWrite($KEY, "Language", "REG_SZ", $LANG_SEL)
	_Tray_Rebuild()
	$GUI = 0
	GUI_Build()
	GUIDelete($TMP)
	GUISetState()
	_Language_GetStrings()
	_Reduce_Memory()
EndFunc   ;==>_Menu_Language

Func Menu_LangPM()
	Local $Link = IniRead(@ScriptDir & "\Language\" & $LANG_SEL & ".ini", "Info", "Contact", "")
	If $Link = "" Then
		MsgBox(0x10, $TITLE, _ReadStr("Menu_3C1"), 0, $GUI)
	Else
		ShellExecute($Link)
	EndIf
EndFunc   ;==>Menu_LangPM

; <--- About menu --->
Func Menu_RyanVM()
	ShellExecute("http://www.ryanvm.net/forum/viewtopic.php?t=5454")
	_Reduce_Memory()
EndFunc   ;==>Menu_RyanVM

Func Menu_WinCert()
	ShellExecute("http://www.wincert.net/forum/index.php?showtopic=4781")
	_Reduce_Memory()
EndFunc   ;==>Menu_WinCert

Func Menu_OnTheWeb()
	ShellExecute("http://xptsp.filetap.com/DSI.html")
	_Reduce_Memory()
EndFunc   ;==>Menu_OnTheWeb

Func Menu_About()
	Local $KEY = "HKLM" & $PROC & "\SOFTWARE\Microsoft\Windows NT\CurrentVersion"
	If $GUI2 <> 0 Then _GUI2_Close()
	$GUI2 = GUICreate($TITLE, 340, 160, -1, -1, -1, -1, $GUI)
	GUISetFont(9)
	If FileInstall("Program.ico", @TempDir & "\", 1) = 0 Then _DisplayError(_FormatStr("Main_09", "Program.ICO"))
	GUICtrlCreateIcon(@TempDir & "\Program.ICO", 0, 10, 5, 48, 48, $BS_ICON)
	GUICtrlCreateLabel($TITLE & " " & _Iif(@Compiled = 1, "v" & FileGetVersion(@ScriptFullPath), "(Uncompiled)"), 60, 10, 280, 30)
	GUICtrlSetFont(-1, 12, 400, 2)
	GUICtrlCreateLabel(_FormatStr("Menu_4A1", "2007-" & @YEAR) & " Douglas Orend", 60, 30, 280, 20)
	GUICtrlCreateLabel(_ReadStr("Menu_4A2") & @CRLF & "   " & RegRead($KEY, "RegisteredOwner") & _
			@CRLF & "   " & RegRead($KEY, "RegisteredOrganization"), 60, 55, 270, 80)
	GUICtrlCreateButton(_ReadStr("Menu_4A3"), (340 - 100) / 2, 130, 100, 25)
	GUICtrlSetOnEvent(-1, "_Gui2_Close")
	GUISetOnEvent($GUI_EVENT_CLOSE, "_Gui2_Close")
	GUISetState(@SW_DISABLE, $GUI)
	GUISetState(@SW_SHOW, $GUI2)
	GUISwitch($GUI2)
EndFunc   ;==>Menu_About

Func Menu_Thanks()
	Local $TREE, $List, $x, $Str
	If $GUI2 <> 0 Then _GUI2_Close()
	$GUI2 = GUICreate(_ReadStr("Menu_4D"), 340, 240, -1, -1, -1, -1, $GUI)
	$TREE = GUICtrlCreateTreeView(10, 10, 320, 195, BitOR($TVS_DISABLEDRAGDROP, $TVS_SHOWSELALWAYS), $WS_EX_CLIENTEDGE)
	GUICtrlCreateTreeViewItem("", $TREE)
	GUICtrlCreateTreeViewItem(_ReadStr("Menu_4D1"), $TREE)
	$List = StringSplit($LANG_FILE, "|")
	For $x = 1 To $List[0]
		If $List[$x] <> "English" Then
			$Str = IniRead(@ScriptDir & "\Language\" & $List[$x] & ".ini", "Info", "Translator", "")
			If $Str <> "" Then GUICtrlCreateTreeViewItem("- " & _FormatStr("Menu_4D2", $List[$x], $Str), $TREE)
		EndIf
	Next
	GUICtrlCreateTreeViewItem("", $TREE)
	GUICtrlCreateTreeViewItem(_ReadStr("Menu_4D3"), $TREE)
	GUICtrlCreateTreeViewItem("- " & _FormatStr("Menu_4D4", "BJFrog", "MacGray"), $TREE)
	GUICtrlCreateTreeViewItem("- " & _FormatStr("Menu_4D4", "BJFrog", "MacRed"), $TREE)
	GUICtrlCreateTreeViewItem("- " & _FormatStr("Menu_4D4", "BJFrog", "MacBlack"), $TREE)
	GUICtrlCreateTreeViewItem("- " & _FormatStr("Menu_4D4", "BJFrog", "VistaBlack"), $TREE)
	GUICtrlCreateTreeViewItem("- " & _FormatStr("Menu_4D4", "Rhor", "VistaBlue"), $TREE)
	GUICtrlCreateTreeViewItem("- " & _FormatStr("Menu_4D4", "KaRaKoRSaN", "VistaBlue USB Stick"), $TREE)
	GUICtrlCreateTreeViewItem("- " & _FormatStr("Menu_4D4", "ColorNokia & Bober", "Vista"), $TREE)
	GUICtrlCreateTreeViewItem("", $TREE)
	GUICtrlCreateTreeViewItem(_ReadStr("Menu_4D5"), $TREE)
	GUICtrlCreateTreeViewItem("- " & _ReadStr("Menu_4D9"), $TREE)
	GUICtrlCreateTreeViewItem("- " & _ReadStr("Menu_4D6"), $TREE)
	GUICtrlCreateTreeViewItem("- " & _ReadStr("Menu_4D7"), $TREE)
	GUICtrlCreateTreeViewItem("- " & _FormatStr("Menu_4D8", "Kelsenellenelvian"), $TREE)
	GUICtrlCreateButton(_ReadStr("Menu_4A3"), (340 - 100) / 2, 210, 100, 25)
	GUICtrlSetOnEvent(-1, "_Gui2_Close")
	GUISetOnEvent($GUI_EVENT_CLOSE, "_Gui2_Close")
	GUISetState(@SW_DISABLE, $GUI)
	GUISetState(@SW_SHOW, $GUI2)
	GUISwitch($GUI2)
	_Reduce_Memory()
EndFunc   ;==>Menu_Thanks

; <--- Drive Tab --->
Func GUI_Indicator()
	GUICtrlSetState($BOX[5], _Iif(GUICtrlRead($BOX[4]) = 4, BitOR($GUI_UNCHECKED, $GUI_DISABLE), $GUI_ENABLE))
	_Reduce_Memory()
EndFunc   ;==>GUI_Indicator

Func GUI_Select_Drive()
	For $a = 1 To $TRAY[0][0]
		If $TRAY[$a][2] = @GUI_CtrlId Then _GUI_Drive_Icon($TRAY[$a][0], "", $TRAY[$a][1])
	Next
EndFunc   ;==>GUI_Select_Drive

; <--- Theme Tab --->
Func GUI_Theme()
	Local $ICL = _Theme_File(GUICtrlRead($BOX[19])), $a, $b
	For $a = 0 To 2
		For $b = 0 To 4
			GUICtrlSetImage($BOX[30 + $a * 5 + $b + 1], $ICL, _Iif($PROC = "64", -1, 1) * $Image[$a][$b] + 1)
		Next
	Next
	_GUI_Drive_Icon($DRV_SEL, $ICL)
	_Reduce_Memory()
EndFunc   ;==>GUI_Theme

; <--- Diagnostics Tab --->
Func GUI_Clipboard()
	ClipPut($DBEG & "\" & @OSLang & "\" & $LANG_SEL & "\" & $THEME_SEL & "\" & $FLOPPY_BAR & "\0\" & _
			$NO_BAR & "\" & $DEL_ICONS & @CR & $DWAR & @CR & $DIAG)
	MsgBox(0, $TITLE, _ReadStr("GUI_4B1"), 0, $GUI)
	_Reduce_Memory()
EndFunc   ;==>GUI_Clipboard

; <--- Shortcut Tab --->
Func GUI_Manage_Select()
	Local $x
	For $x = 1 To $SC[0][0]
		If $SC[$x][0] = @GUI_CtrlId Then $SC[0][1] = $x
	Next
EndFunc   ;==>GUI_Manage_Select

Func GUI_Manage_Add()
	Local $File = FileOpenDialog(_ReadStr("GUI_3C1"), "", _ReadStr("GUI_3C2") & " (*.lnk)", 1)
	If @error = 0 Then
		_Shortcut_Track($File, 0)
		_GUI_Shortcut_Populate()
	EndIf
EndFunc   ;==>GUI_Manage_Add

Func GUI_Manage_Delete()
	Local $ID = $SC[0][1]
	If MsgBox(0x24, $TITLE, _ReadStr("GUI_3D1") & @CRLF & $SC[$ID][1], 0, $GUI) = 6 Then
		_Shortcut_NoTrack($SC[$ID][1], 0)
		_GUI_Shortcut_Populate()
	EndIf
EndFunc   ;==>GUI_Manage_Delete

Func GUI_Shortcut()
	$MONITOR = _Iif(GUICtrlRead(@GUI_CtrlId) = 4, 0, 1)
	_Shortcut_Monitor()
EndFunc   ;==>GUI_Shortcut

; <--- GUI Buttons --->
Func GUI_Accept()
	Local $TMP, $b, $a, $CHANGES = 0

	; Get whether floppy indicator will be used.  If different, force update.
	$MONITOR = _Iif(GUICtrlRead($BOX[5]) = 4, 0, 1)
	RegWrite($KEY, "Monitor_Shortcuts", "REG_DWORD", $MONITOR)

	; Get whether floppy indicator will be used.  If different, force update.
	$TMP = _Iif(GUICtrlRead($BOX[5]) = 4, 0, 1)
	If $FLOPPY_BAR <> $TMP Then $CHANGES += 1
	$FLOPPY_BAR = $TMP
	RegWrite($KEY, "Floppy_Bar", "REG_DWORD", $FLOPPY_BAR)

	; Get whether any indicators will be used.  If different, force update.
	$TMP = _Iif(GUICtrlRead($BOX[4]) = 4, 1, 0)
	If $NO_BAR <> $TMP Then $CHANGES += 1
	$NO_BAR = $TMP
	RegWrite($KEY, "No_Bar", "REG_DWORD", $NO_BAR)

	; Get which icon theme will be used.  If different, force update.
	$TMP = GUICtrlRead($BOX[19])
	If $THEME_SEL <> $TMP Then $CHANGES += 1
	$THEME_SEL = $TMP
	$THEME_FILE = _Theme_File($THEME_SEL)
	RegWrite($KEY, "Library", "REG_SZ", $THEME_SEL)

	; Deal with the drives that the user wants to monitor from the Notification Tray:
	$MDrv = ""
	For $a = 1 To $TRAY[0][0]
		If BitAND(GUICtrlRead($TRAY[$a][2]), 5) = 1 Then _
				$MDrv = $MDrv & _Iif($MDrv <> "", "|", "") & $TRAY[$a][0]
	Next
	RegWrite($KEY, "Monitor", "REG_SZ", $MDrv)
	_Tray_Update()

	; If things have changed, force an update:
	If $CHANGES > 0 Then $Timer[0] = 0
	GUI_Cancel()
EndFunc   ;==>GUI_Accept

Func GUI_Cancel()
	Local $x
	;For $x = 1 To $MENU[0]
	;_GUICtrlODMenuItemDelete($MENU[$x])
	;Next
	GUIDelete($GUI)
	$GUI = 0
	$DRV_SEL = ""
	If @Compiled = 0 And $GUI_ONLY Then Tray_Exit()
	_Reduce_Memory()
EndFunc   ;==>GUI_Cancel

;----------------------------------------------------------------------------------
Func _GUI_Tray_Populate()
	Local $TREE = $TRAY[0][2], $a, $Drv, $OLD_SEL = $DRV_SEL, $TMP

	; Remove all drives from the GUI:
	If $GUI = 0 Then Return
	For $a = 1 To $TRAY[0][0]
		If $TRAY[$a][2] <> 0 Then GUICtrlDelete($TRAY[$a][2])
		$TRAY[$a][2] = 0
	Next

	; Locate either first drive in list or previously highlighted drive:
	$DRV_SEL = ""
	For $a = 1 To $TRAY[0][0]
		If $TRAY[$a][0] = $OLD_SEL Then $DRV_SEL = $TRAY[$a][0]
	Next
	If $DRV_SEL = "" Then $DRV_SEL = $TRAY[1][0]

	; Construct drive list for GUI, highlighting selected drive:
	$TMP = _ReadStr("_SHOW")
	For $a = 1 To $TRAY[0][0]
		$Drv = $TRAY[$a][0]
		$TRAY[$a][2] = GUICtrlCreateTreeViewItem(_FormatStr("GUI_1H", StringUpper($Drv), _ReadStr($IconArray[$TRAY[$a][1]][14])), $TREE)
		GUICtrlSetOnEvent(-1, "GUI_Select_Drive")
		If StringInStr($MDrv, $Drv, 2) <> 0 Then
			GUICtrlSetState(-1, BitOR($GUI_CHECKED, _Iif($Drv = $DRV_SEL, $GUI_FOCUS, 0)))
		Else
			If $Drv = $DRV_SEL Then GUICtrlSetState(-1, $GUI_FOCUS)
		EndIf
	Next
	$BMON = 0
EndFunc   ;==>_GUI_Tray_Populate

Func _GUI_Drive_Icon($Drive = $DRV_SEL, $ICL = "", $GRP = -1)
	Local $z = _Iif($PROC = "64" And @OSVersion <> "WIN_VISTA", -1, 1)
	If $GUI = 0 Then Return
	Local $TMP = RegRead($ICN & StringLeft($Drive, 1) & "\DefaultIcon", "")
	Local $ICN = StringRight($TMP, StringLen($TMP) - StringInStr($TMP, ",", 0, -1))
	If $ICL = "" Then $ICL = _Theme_File(GUICtrlRead($BOX[19]))
	GUICtrlSetImage($BOX[10], $ICL, $z * ($ICN + _Iif($z = -1, 0, 1)))
	$DRV_SEL = $Drive
	If $GRP = -1 Then $GRP = $TRAY[_Tray_Find($Drive)][1]
	GUICtrlSetState($BOX[11], _Iif($GRP = 1 Or $GRP = 2 Or ($GRP > 7 And $GRP < 12), $GUI_DISABLE, $GUI_ENABLE))
	If $GRP = 0 Then
		GUICtrlSetOnEvent($BOX[11], "Optical_Build")
	Else
		GUICtrlSetOnEvent($BOX[11], "Removable_Build")
	EndIf
EndFunc   ;==>_GUI_Drive_Icon

Func _GUI_Diagnostics_Populate()
	Local $x, $TREE, $TList, $a, $TMP, $TMP2
	If $GUI = 0 Then Return
	For $a = 1 To $DIAG_GUI[0]
		If $DIAG_GUI[$a] <> 0 Then GUICtrlDelete($DIAG_GUI[$a])
	Next
	$TREE = $BOX[29]
	$TList = StringSplit($DIAG, @CR)
	Dim $DIAG_GUI[UBound($TList) + 1]
	For $a = 1 To $TList[0] - 1
		If StringInStr($TList[$a], ", V=") <> 0 Then $TList[$a] = StringLeft($TList[$a], StringInStr($TList[$a], ", V=") - 1)
		If StringMid($TList[$a], 2, 3) = ":, " Then
			$TMP = RegRead($ICN & "\" & StringLeft($TList[$a], 1) & "\DefaultIcon", "")
			$TMP = StringMid($TMP, StringInStr($TMP, ",", 0, -1) + 1, 3)
			$TMP2 = StringSplit($TList[$a], ",")
			$TMP2 = StringReplace($TMP2[6], " I=", "")
			If $TMP <> $TMP2 Then $TList[$a] = $TList[$a] & ", V=0"
		EndIf
		$DIAG_GUI[$a] = GUICtrlCreateTreeViewItem($TList[$a], $TREE)
	Next
	$DIAG_GUI[0] = $TList[0]
EndFunc   ;==>_GUI_Diagnostics_Populate

Func _GUI_Shortcut_Populate()
	Local $a, $File, $aD = $BOX[51]
	If $GUI = 0 Then Return
	If $SC[0][0] > 0 Then
		For $a = 1 To $SC[0][0]
			If $SC[$a][0] <> 0 Then GUICtrlDelete($SC[$a][0])
		Next
	EndIf
	Dim $SC[1][2]
	$a = 1
	While 1
		$File = RegEnumVal($KEY & "\Shortcuts", $a)
		If @error Then ExitLoop
		ReDim $SC[$a + 1][2]
		$SC[$a][0] = GUICtrlCreateTreeViewItem($File, $aD)
		$SC[$a][1] = $File
		GUICtrlSetOnEvent(-1, "GUI_Manage_Select")
		If $a = 1 Then GUICtrlSetState(-1, $GUI_FOCUS)
		$a += 1
	WEnd
	$SC[0][0] = $a - 1
	$SC[0][1] = 1
	GUICtrlSetState($BOX[52], _Iif($a = 1, $GUI_DISABLE, $GUI_ENABLE))
EndFunc   ;==>_GUI_Shortcut_Populate

Func _GUI2_Close()
	Dim $LV[2][7] = [[0]]
	If $GUI <> 0 Then
		GUISwitch($GUI)
		GUISetState(@SW_ENABLE)
		GUISetState(@SW_SHOW)
	EndIf
	GUIDelete($GUI2)
	$GUI2 = 0
EndFunc   ;==>_GUI2_Close

;==================================================================================
; Functions that deal with changing optical drive icon types:
;==================================================================================
Func Optical_Build()
	Local $LIB = RegRead($ICN & StringLeft($DRV_SEL, 1) & "\DefaultIcon", "")
	Local $Str = StringSplit($LIB, ","), $TIcon = 0
	If $Str[0] > 1 Then $TIcon = $Str[2]

	If FileInstall("X.ico", @TempDir & "\", 1) = 0 Then _DisplayError(_FormatStr("Main_09", "X.ico"))
	If FileInstall("Arrow.ico", @TempDir & "\", 1) = 0 Then _DisplayError(_FormatStr("Main_09", "Arrow.ico"))
	If $GUI2 <> 0 Then _GUI2_Close()
	$GUI2 = GUICreate(_ReadStr("Icon_33"), 320, 120, Default, Default, Default, Default, $GUI)
	GUICtrlCreateIcon($Str[1], $TIcon + 1, 10, 5, 48, 48, $BS_ICON)
	GUICtrlCreateIcon(@TempDir & "\Arrow.ico", 0, 70, 13, 32, 32, $BS_ICON)

	; First row: CD-ROM, DVD-ROM, Virtual Drive, Auto-Detect
	GUICtrlCreateButton("", 110, 5, 48, 48, $BS_ICON)
	GUICtrlSetImage(-1, $Str[1], $IconArray[0][1] + 1)
	GUICtrlSetTip(-1, _ReadStr("Icon_20"))
	GUICtrlSetOnEvent(-1, "Optical_CD")
	GUICtrlCreateButton("", 160, 5, 48, 48, $BS_ICON)
	GUICtrlSetImage(-1, $Str[1], $IconArray[0][2] + 1)
	GUICtrlSetOnEvent(-1, "Optical_DVD")
	GUICtrlSetTip(-1, _ReadStr("Icon_21"))
	GUICtrlCreateButton("", 210, 5, 48, 48, $BS_ICON)
	GUICtrlSetImage(-1, $Str[1], $IconArray[0][3] + 1)
	GUICtrlSetOnEvent(-1, "Optical_Virtual")
	GUICtrlSetTip(-1, _ReadStr("Icon_30"))
	GUICtrlCreateButton("", 260, 5, 48, 48, $BS_ICON)
	GUICtrlSetImage(-1, @TempDir & "\X.Ico", 0)
	GUICtrlSetOnEvent(-1, "Optical_Detect")
	GUICtrlSetTip(-1, _ReadStr("Icon_34"))

	GUICtrlCreateLabel("PNP: " & _PNP_Get($DRV_SEL), 10, 60, 300, 20, $SS_LEFTNOWORDWRAP)
	GUICtrlCreateButton(_ReadStr("GUI_NO"), 210, 90, 100, 25)
	GUICtrlSetOnEvent(-1, "_GUI2_Close")
	GUISetState()
	GUISetState(@SW_DISABLE, $GUI)
EndFunc   ;==>Optical_Build

Func Optical_CD()
	_Build_Type(1)
EndFunc   ;==>Optical_CD

Func Optical_DVD()
	_Build_Type(2)
EndFunc   ;==>Optical_DVD

Func Optical_Virtual()
	_Build_Type(3)
EndFunc   ;==>Optical_Virtual

Func Optical_Detect()
	RegDelete($PNPKEY, _PNP_Get($DRV_SEL))
	$Timer[0] = 0
	_GUI2_Close()
EndFunc   ;==>Optical_Detect

;----------------------------------------------------------------------------------
Func _Build_Type($ID)
	RegWrite($PNPKEY, _PNP_Get($DRV_SEL), "REG_DWORD", $ID)
	$Timer[0] = 0
	_GUI2_Close()
	FileDelete(@TempDir & "\X.ico")
	FileDelete(@TempDir & "\Arrow.ico")
EndFunc   ;==>_Build_Type

;==================================================================================
; Functions that deal with changing removable drive icon types:
;==================================================================================
Func Removable_Build()
	Local $LIB = RegRead($ICN & StringLeft($DRV_SEL, 1) & "\DefaultIcon", "")
	Local $Str = StringSplit($LIB, ","), $TIcon = 0
	If $Str[0] > 1 Then $TIcon = $Str[2]

	If FileInstall("X.ico", @TempDir & "\", 1) = 0 Then _DisplayError(_FormatStr("Main_09", "X.ico"))
	If FileInstall("Arrow.ico", @TempDir & "\", 1) = 0 Then _DisplayError(_FormatStr("Main_09", "Arrow.ICO"))
	If $GUI2 <> 0 Then _GUI2_Close()
	$GUI2 = GUICreate(_ReadStr("IC98"), 320, 170, Default, Default, Default, Default, $GUI)
	GUICtrlCreateIcon($Str[1], $TIcon + 1, 10, 30, 48, 48, $BS_ICON)
	GUICtrlCreateIcon(@TempDir & "\Arrow.ico", 0, 70, 38, 32, 32, $BS_ICON)

	; First row: Card Reader, Camera, Video Camcorder, MP3 Player
	GUICtrlCreateButton("", 110, 5, 48, 48, $BS_ICON)
	GUICtrlSetImage(-1, $Str[1], $Image[1][2] + 1)
	GUICtrlSetTip(-1, _ReadStr("Icon_12"))
	GUICtrlSetOnEvent(-1, "Removable_Card")
	GUICtrlCreateButton("", 160, 5, 48, 48, $BS_ICON)
	GUICtrlSetImage(-1, $Str[1], $Image[1][3] + 1)
	GUICtrlSetOnEvent(-1, "Removable_Camera")
	GUICtrlSetTip(-1, _ReadStr("Icon_13"))
	GUICtrlCreateButton("", 210, 5, 48, 48, $BS_ICON)
	GUICtrlSetImage(-1, $Str[1], $Image[1][4] + 1)
	GUICtrlSetOnEvent(-1, "Removable_VidCam")
	GUICtrlSetTip(-1, _ReadStr("Icon_14"))
	GUICtrlCreateButton("", 260, 5, 48, 48, $BS_ICON)
	GUICtrlSetImage(-1, $Str[1], $Image[1][1] + 1)
	GUICtrlSetOnEvent(-1, "Removable_MP3")
	GUICtrlSetTip(-1, _ReadStr("Icon_11"))

	; Second row: ZIP Drive, Floppy, USB Flash, Removable
	GUICtrlCreateButton("", 110, 55, 48, 48, $BS_ICON)
	GUICtrlSetImage(-1, $Str[1], $Image[2][2] + 1)
	GUICtrlSetTip(-1, _ReadStr("Icon_22"))
	GUICtrlSetOnEvent(-1, "Removable_ZIP")
	GUICtrlCreateButton("", 160, 55, 48, 48, $BS_ICON)
	GUICtrlSetImage(-1, $Str[1], $Image[0][4] + 1)
	GUICtrlSetOnEvent(-1, "Removable_Floppy")
	GUICtrlSetTip(-1, _ReadStr("Icon_04"))
	GUICtrlCreateButton("", 210, 55, 48, 48, $BS_ICON)
	GUICtrlSetImage(-1, $Str[1], $Image[3][0] + 1)
	GUICtrlSetOnEvent(-1, "Removable_Flash")
	GUICtrlSetTip(-1, _ReadStr("Icon_31"))
	GUICtrlCreateButton("", 260, 55, 48, 48, $BS_ICON)
	GUICtrlSetImage(-1, $Str[1], $Image[1][0] + 1)
	GUICtrlSetOnEvent(-1, "Removable_Removable")
	GUICtrlSetTip(-1, _ReadStr("Icon_10"))

	GUICtrlCreateLabel("PNP: " & _PNP_Get($DRV_SEL), 10, 120, 300, 20, $SS_LEFTNOWORDWRAP)
	GUICtrlCreateButton(_ReadStr("Icon_34"), 100, 140, 100, 25)
	GUICtrlSetOnEvent(-1, "Optical_Detect")
	GUICtrlCreateButton(_ReadStr("GUI_NO"), 210, 140, 100, 25)
	GUICtrlSetOnEvent(-1, "_GUI2_Close")
	GUISetState()
	GUISetState(@SW_DISABLE, $GUI)
EndFunc   ;==>Removable_Build

Func Removable_Card()
	_Build_Type(4)
EndFunc   ;==>Removable_Card

Func Removable_Camera()
	_Build_Type(5)
EndFunc   ;==>Removable_Camera

Func Removable_VidCam()
	_Build_Type(6)
EndFunc   ;==>Removable_VidCam

Func Removable_MP3()
	_Build_Type(7)
EndFunc   ;==>Removable_MP3

Func Removable_ZIP()
	_Build_Type(12)
EndFunc   ;==>Removable_ZIP

Func Removable_Floppy()
	_Build_Type(13)
EndFunc   ;==>Removable_Floppy

Func Removable_Flash()
	_Build_Type(14)
EndFunc   ;==>Removable_Flash

Func Removable_Removable()
	_Build_Type(3)
EndFunc   ;==>Removable_Removable

;==================================================================================
; Functions handling the Update GUI:
;==================================================================================
Func Updates_Build($Auto = 1)
	Local $File = @TempDir & "\Version.txt", $List1, $List2, $List3, $List4, $Ver1, $Ver2, $Size, $SFX = 0
	Local $Line, $a, $b = 1, $c, $ID, $SUB, $Cur = FileGetVersion(@ScriptFullPath), $Ver, $Del = 0, $ISBETA = 0

	; Check circumstances of the system running this program:
	If (@IPAddress1 = "0.0.0.0" Or @IPAddress1 = "127.0.0.1") And @IPAddress2 = "0.0.0.0" _
			And @IPAddress3 = "0.0.0.0" And @IPAddress4 = "0.0.0.0" Then
		If $Auto = False Then MsgBox(0x10, $TITLE, _ReadStr("Upd_01"), 0, $GUI)
		Return
	EndIf

	; Get current version number from Doug's web site:
	$Timer[3] = _DateAdd("d", _Max(1, $DAILY), _NowCalc())
	RegWrite($KEY, "Next_Update", "REG_SZ", $Timer[3])
	If InetGet($WEBSITE & "Version.txt", $File, 1) = 0 Then
		If $Auto = 0 Then MsgBox(0x40, $TITLE, _ReadStr("Upd_02"), 0, $GUI)
		_Reduce_Memory()
		Return
	EndIf

	; Elevate beta status to confirmed if MAC Address is found in list:
	If $BETA = 1 Then
		If @Compiled = 0 Then
			$a = FileRead($File)
			FileClose($File)
			RunWait(@ComSpec & " /c ipconfig /all | find ""Physical Address"" > Output.txt", @TempDir, @SW_HIDE)
			$c = StringSplit(FileRead(@TempDir & "\Output.txt"), @CRLF)
			FileClose(@TempDir & "\Output.txt")
			While $b < $c[0]
				FileDelete(@TempDir & "\Output.txt")
				FileWrite(@TempDir & "\Output.txt", $c[$b])
				FileClose(@TempDir & "\Output.txt")
				If StringInStr($a, _MD5Hash(@TempDir & "\Output.txt")) <> 0 Then $BETA = 2
			WEnd
			MsgBox(0, "", $BETA, 0, $GUI)
		EndIf
	EndIf

	; Read all v5.2 or v5.3 sections into memory, then delete "Version.txt":
	$Ver = FileReadLine($File)
	FileClose($File)
	$List1 = IniReadSection($File, "Language_5.2")
	If @error Then Dim $List1[1][1]
	$List2 = IniReadSection($File, "Themes_5.3")
	If @error Then Dim $List2[1][1]
	$List3 = IniReadSection($File, _Iif($BETA = 2, "Beta_5.2", "Program_5.2"))
	If @error Then Dim $List3[1][1]
	$List4 = IniReadSection($File, "Program_5.2")
	If @error Then Dim $List4[1][1]
	FileDelete($File)

	; Let's create the Update GUI:
	If $GUI2 <> 0 Then _GUI2_Close()
	ReDim $LV[UBound($List1) + UBound($List2) + UBound($List3) + 2][7]
	If $GUI <> 0 Then
		$GUI2 = GUICreate($TITLE, 380, 290, -1, -1, -1, -1, $GUI)
	Else
		$GUI2 = GUICreate($TITLE, 380, 290)
	EndIf
	GUISetFont(9)
	GUICtrlCreateGroup(_ReadStr("Upd_03"), 10, 10, 360, 240)
	$ID = GUICtrlCreateListView(_Center("Upd_04", 30) & "|" & _Center("Upd_06", 11) & "|" & _Center("Upd_07", 8), _
			20, 30, 340, 210, BitOR($GUI_SS_DEFAULT_LISTVIEW, $LVS_NOSORTHEADER), BitOR($LVS_EX_CHECKBOXES, $WS_EX_STATICEDGE))

	; Parse Program section to see if the program has been updated:
	$b = 1
	If $List3[0][0] > 0 Then
		For $a = 1 To $List3[0][0]
			$Line = StringSplit($List3[$a][1], "|")
			If $Line[1] > $Cur And @Compiled = 1 Then
				$ISBETA = _Iif($List4[$a][1] = $List3[$a][1], 0, 1)
				$Size = $Line[3]
				$LV[$b][0] = GUICtrlCreateListViewItem($List3[$a][0] & "|" & $Ver & "|" & Round($Size / 1024) & " kb", $ID)
				If $List3[$a][0] = "SFX Installer" Then
					$LV[$b][1] = "DriveSpace_v" & $Ver & "_SFX.exe"
					$SFX = 1
				Else
					$LV[$b][1] = $List3[$a][0]
				EndIf
				$LV[$b][2] = $Size
				$LV[$b][3] = $LV[$b][1]
				$LV[$b][5] = $LV[$b][1]
				$LV[$b][6] = $LV[$b][1]
				$b += 1
				GUICtrlSetState(-1, $GUI_CHECKED)
			EndIf
		Next
	EndIf

	; If there is no SFX to download, display any other updates available to download:
	If $SFX = 0 Then
		; Parse Language section to see what languages need updating:
		If $List1[0][0] > 0 Then
			For $a = 1 To $List1[0][0]
				$LV[$b][5] = $List1[$a][0]
				$LV[$b][1] = "Languages/" & $LV[$b][5]
				$Ver1 = IniRead(@ScriptDir & "\Language\" & $List1[$a][0], "Info", "Version", "N/A")
				$Line = StringSplit($List1[$a][1], "|")
				$Ver2 = $Line[1]
				$Size = $Line[3]
				If $Ver1 = "N/A" Or $Ver1 < $Ver2 Then
					$LV[$b][0] = GUICtrlCreateListViewItem($List1[$a][0] & "|" & $Ver2 & "|" & Round($Size / 1024, 1) & " kb", $ID)
					$LV[$b][2] = $Size
					$LV[$b][3] = $List1[$a][0]
					$LV[$b][6] = "Languages/" & $LV[$b][5]
					$b += 1
					If $LANG_SEL & ".ini" = $List1[$a][0] Then GUICtrlSetState(-1, $GUI_CHECKED)
					If FileExists(@ScriptDir & "\Language\" & $List1[$a][0]) = 0 Then GUICtrlSetState(-1, $GUI_CHECKED)
				EndIf
			Next
		EndIf

		; Parse Themes section to see what Icon Themes need updating:
		If $List2[0][0] > 0 Then
			For $a = 1 To $List2[0][0]
				$LV[$b][0] = $List2[$a][0]
				$LV[$b][1] = "Themes/" & $List2[$a][0]
				$Line = StringSplit($List2[$a][1], "|")
				$LV[$b][5] = StringLeft($LV[$b][0], StringLen($LV[$b][0]) - 4) & ".CAB"
				$Ver1 = _MD5Hash(@ScriptDir & "\THEMES\" & $List2[$a][0])
				If $Ver1 <> $Line[1] Then
					$LV[$b][0] = GUICtrlCreateListViewItem($LV[$b][5] & "|" & $Ver & "|" & Round($Line[2] / 1024) & " kb", $ID)
					$LV[$b][2] = $Line[2]
					$LV[$b][3] = $List2[$a][0]
					$LV[$b][6] = "Themes/" & $LV[$b][5]
					$b += 1
					GUICtrlSetState(-1, $GUI_CHECKED)
				EndIf
			Next
		EndIf
	EndIf

	; Prompt to install if auto setting is enabled.  Otherwise, prompt if no updates are available:
	$LV[0][0] = $b - 1
	If $Auto Then
		If $b = 1 Then Return
		If MsgBox(0x24, $TITLE, StringReplace(_ReadStr(_Iif($ISBETA, "Upd_12", "Upd_08")), "|", @CRLF), 0, $GUI) = 7 Then
			_GUI2_Close()
			Return
		EndIf
	Else
		If $b = 1 Then
			MsgBox(0x40, $TITLE, _ReadStr("Upd_02"), 0, $GUI)
			_GUI2_Close()
			Return
		EndIf
	EndIf

	; We found some updates ready for downloading.  Show the Update GUI to the user:
	GUICtrlCreateButton(_ReadStr("Upd_09"), 150, 260, 100, 25)
	GUICtrlSetOnEvent(-1, "Updates_Download")
	GUICtrlCreateButton(_ReadStr("GUI_NO"), 260, 260, 100, 25)
	GUICtrlSetOnEvent(-1, "_Gui2_Close")
	GUISetOnEvent($GUI_EVENT_CLOSE, "_Gui2_Close")
	GUISetState()
	If $GUI <> 0 Then GUISetState(@SW_DISABLE, $GUI)
	GUISwitch($GUI2)
EndFunc   ;==>Updates_Build

Func Updates_Download()
	Local $a, $Max = $LV[0][0], $Size = 0, $Total = 0, $SUB = 0, $Byte1, $Byte2, $File

	; Figure out how much data is to be downloaded from the website:
	For $a = 1 To $Max
		$LV[$a][4] = _Iif(BitAND(GUICtrlRead($LV[$a][0], 1), $GUI_CHECKED), 1, 0)
		If $LV[$a][4] = 1 Then $Total += $LV[$a][2]
	Next
	GUISetState(@SW_DISABLE)

	; Remove all references to Icon Themes right now:
	_Remove_Icons()
	_Update_Explorer()

	; Begin downloading from the website:
	ProgressOn($TITLE, _ReadStr("Upd_10"))
	For $a = 1 To $Max
		If $LV[$a][4] = 1 Then
			$File = $LV[$a][5]
			FileDelete(@TempDir & "\" & $File)
			If InetGet($WEBSITE & $LV[$a][6], @TempDir & "\" & $File, 1, 1) Then
				While @InetGetActive
					$Byte1 = @InetGetBytesRead
					$Byte2 = $SUB + $Byte1
					ProgressSet(($Byte2 * 100) / $Total, _FormatStr("Upd_11", $Byte2, $Total))
					Sleep(500)
				WEnd
				$SUB += $LV[$a][2]
				ProgressSet(($SUB * 100) / $Total)
				If StringRight($File, 4) <> ".exe" Then
					If StringRight($LV[$a][3], 3) = "ini" Then
						FileMove(@TempDir & "\" & $LV[$a][3], @ScriptDir & "\Language\" & _StringProper($LV[$a][3]), 1)
					Else
						_ExpandCab(@TempDir & "\" & $File)
						FileMove(@TempDir & "\DSI\" & $LV[$a][3], @ScriptDir & "\Themes\" & $LV[$a][3], 1)
					EndIf
					FileDelete(@TempDir & "\" & $File)
				Else
					RegDelete($KEY, "Next_Update")
					Run(@TempDir & "\" & $File & " -gm2 /SILENT")
					Leave_Script()
				EndIf
			EndIf
		EndIf
	Next
	ProgressOff()
	_GUI2_Close()

	; Reload Icon Theme lists for GUI, then close the Update GUI:
	If $GUI <> 0 Then
		$File = $THEME_SEL
		_Theme_Load()
		$THEME_SEL = $File
		GUICtrlSetData($BOX[19], "|")
		GUICtrlSetData($BOX[19], $THEME_LIST, $THEME_SEL)
		GUICtrlSetState($BOX[19], _Iif(StringInStr($THEME_LIST, "|") = 0, $GUI_DISABLE, $GUI_ENABLE))
		_Menu_Language()
		_Update_Explorer()
	EndIf
EndFunc   ;==>Updates_Download

;==================================================================================
; Functions responsible for Program Installation:
;==================================================================================
; Start Install page:
Func Install_Start()
	; Retrieve current DSI install & shortcut folder:
	If $DIR = "" Then
		$DIR = RegRead("HKCR" & $PROC & "\CLSID\" & $CLSID & "\DefaultIcon", "")
		$DIR = StringReplace(StringReplace(StringReplace($DIR, "\DrvSpace.exe"", 0", ""), "\DrvSpace.exe"",0", ""), """", "")
		If $DIR = "" Then $DIR = @ProgramFilesDir & "\" & $TITLE
	EndIf
	If $SDIR = "" Then
		$SDIR = RegRead("HKLM" & $PROC & "\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\DriveSpace", "Shortcut")
		If @error <> 0 Then $SDIR = "Drive Space Indicator"
	EndIf
	If FileInstall("Logo0.jpg", @TempDir & "\", 1) = 0 Then _DisplayError(_FormatStr("Main_09", "Logo0.jpg"))

	; If passive or silent install, skip this screen.  Otherwise, build the 1st page:
	If $CONFIG > 2 Then Return Install_Page3()
	Local $OLD = $GUI
	Local $POS = WinGetPos(_ReadStr("Inst_1A") & " - " & $TITLE)
	If @error = 1 Then
		$GUI = GUICreate(_ReadStr("Inst_1A") & " - " & $TITLE, 500, 360)
	Else
		$GUI = GUICreate(_ReadStr("Inst_1A") & " - " & $TITLE, 500, 360, $POS[0], $POS[1])
	EndIf
	GUISetFont(9, 400)
	GUISetOnEvent($GUI_EVENT_CLOSE, "Install_Cancel")
	GUICtrlCreateGroup("", 0, 314, 500, 1)
	GUICtrlCreatePic(@TempDir & "\Logo0.jpg", 0, 0, 164, 314)
	GUICtrlCreateLabel(_FormatStr("Inst_1B", $TITLE), 175, 15, -1, 40)
	GUICtrlSetFont(-1, 12, 800)
	GUICtrlCreateLabel(StringReplace(_FormatStr("Inst_1C", $TITLE), "|", @CRLF), 175, 70, 305, 200)
	GUICtrlCreateButton(_ReadStr("Inst_1D") & " >", 320, 325, 80, 25)
	GUICtrlSetOnEvent(-1, "Install_Page2")
	GUICtrlSetState(-1, $GUI_DEFBUTTON)
	GUICtrlCreateButton(_ReadStr("GUI_NO"), 410, 325, 80, 25)
	GUICtrlSetOnEvent(-1, "Install_Cancel")
	GUISetState()
	If $OLD <> 0 Then GUIDelete($OLD)
EndFunc   ;==>Install_Start

Func Install_Cancel()
	If @Compiled = 0 Then Exit
	If MsgBox(0x24, $TITLE, StringReplace(_FormatStr("Inst_1E", $TITLE), "|", @CRLF), 0, $GUI) = 6 Then Exit
EndFunc   ;==>Install_Cancel

;----------------------------------------------------------------------------------
; License Agreement page:
Func Install_Page2()
	Local $OLD = $GUI, $T1, $T2, $T3, $T4
	Local $POS = WinGetPos(_ReadStr("Inst_1A") & " - " & $TITLE)
	If @error = 1 Then
		$GUI = GUICreate(_ReadStr("Inst_1A") & " - " & $TITLE, 500, 360)
	Else
		$GUI = GUICreate(_ReadStr("Inst_1A") & " - " & $TITLE, 500, 360, $POS[0], $POS[1])
	EndIf
	GUISetFont(9, 400)
	GUISetOnEvent($GUI_EVENT_CLOSE, "Install_Cancel")
	GUICtrlCreateGroup("", 0, 314, 500, 1)
	GUICtrlCreatePic(@TempDir & "\Logo0.jpg", 0, 0, 164, 314)
	GUICtrlCreateLabel(_ReadStr("Inst_2A"), 175, 15, 300, 20)
	GUICtrlSetFont(-1, 12, 800)
	GUICtrlCreateLabel(_ReadStr("Inst_2B"), 175, 50, 305, 200)
	$T1 = _ReadStr("Inst_2C")
	$T2 = _StringRepeat("=", StringLen($T1))
	$T3 = _ReadStr("Inst_2D")
	$T4 = _StringRepeat("=", StringLen($T3))
	GUICtrlCreateEdit($T1 & @CRLF & $T2 & @CRLF & _FormatStr("Inst_2E", $TITLE) & @CRLF & _
			@CRLF & $T3 & @CRLF & $T4 & @CRLF & _FormatStr("Inst_2F", $TITLE), 175, 100, 305, 180, _
			BitOR($ES_MULTILINE, $ES_READONLY, $WS_VSCROLL, $ES_AUTOVSCROLL))
	GUICtrlSetFont(-1, 8.5, 400)
	GUICtrlCreateCheckbox(_ReadStr("Inst_2G"), 175, 290, 305, 20)
	GUICtrlSetOnEvent(-1, "Install_Accept")
	GUICtrlCreateButton("< " & _ReadStr("Inst_2H"), 230, 325, 80, 25)
	GUICtrlSetOnEvent(-1, "Install_Start")
	$GUI2 = GUICtrlCreateButton(_ReadStr("Inst_1D") & " >", 320, 325, 80, 25)
	GUICtrlSetOnEvent(-1, "Install_Page3")
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_DEFBUTTON)
	GUICtrlCreateButton(_ReadStr("GUI_NO"), 410, 325, 80, 25)
	GUICtrlSetOnEvent(-1, "Install_Cancel")
	GUISetState()
	If $OLD <> 0 Then GUIDelete($OLD)
EndFunc   ;==>Install_Page2

Func Install_Accept()
	GUICtrlSetState($GUI2, _Iif(GUICtrlRead(@GUI_CtrlId) = 1, $GUI_ENABLE, $GUI_DISABLE))
EndFunc   ;==>Install_Accept

;----------------------------------------------------------------------------------
; Installation Folder page:
Func Install_Page3()
	; If passive or silent install, skip this screen.  Otherwise, build the 3rd page:
	If $CONFIG > 2 Then Return Install_Page4()
	Local $OLD = $GUI
	Local $POS = WinGetPos(_ReadStr("Inst_1A") & " - " & $TITLE)
	If @error = 1 Then
		$GUI = GUICreate(_ReadStr("Inst_1A") & " - " & $TITLE, 500, 360)
	Else
		$GUI = GUICreate(_ReadStr("Inst_1A") & " - " & $TITLE, 500, 360, $POS[0], $POS[1])
	EndIf
	GUISetFont(9, 400)
	GUISetOnEvent($GUI_EVENT_CLOSE, "Install_Cancel")
	GUICtrlCreateGroup("", 0, 314, 500, 1)
	GUICtrlCreatePic(@TempDir & "\Logo0.jpg", 0, 0, 164, 314)
	GUICtrlCreateGroup(_ReadStr("Inst_3A"), 170, 10, 320, 295)
	GUICtrlSetFont(-1, 12, 800)
	GUICtrlCreateLabel(_FormatStr("Inst_3B", $TITLE), 180, 50, 300, 30)
	$GUI2 = GUICtrlCreateEdit($DIR, 180, 90, 300, 25, BitOR($ES_WANTRETURN, $ES_AUTOVSCROLL, $ES_AUTOHSCROLL))
	GUICtrlCreateButton(_ReadStr("Inst_5C"), 400, 120, 80, 25)
	GUICtrlSetOnEvent(-1, "Install_Folder")
	GUICtrlCreateLabel(_FormatStr("Inst_3C", 12), 180, 280, 300, 25)
	GUICtrlSetFont(-1, 8.5, 400)
	GUICtrlCreateButton("< " & _ReadStr("Inst_2H"), 240, 325, 80, 25)
	GUICtrlSetOnEvent(-1, "Install_Page2")
	GUICtrlCreateButton(_ReadStr("Inst_1D") & " >", 320, 325, 80, 25)
	GUICtrlSetState(-1, $GUI_DEFBUTTON)
	GUICtrlSetOnEvent(-1, "Install_Page4")
	GUICtrlCreateButton(_ReadStr("GUI_NO"), 410, 325, 80, 25)
	GUICtrlSetOnEvent(-1, "Install_Cancel")
	GUISetState()
	If $OLD <> 0 Then GUIDelete($OLD)
EndFunc   ;==>Install_Page3

Func Install_Folder()
	$DIR = GUICtrlRead($GUI2)
	If FileExists($DIR) = 0 Then $DIR = @ProgramFilesDir
	Local $T = FileSelectFolder(_ReadStr("Inst_3D"), "::{20D04FE0-3AEA-1069-A2D8-08002B30309D}", 7, $DIR)
	If $T <> "" Then
		GUICtrlSetData($GUI2, $T)
		$DIR = $T
	EndIf
EndFunc   ;==>Install_Folder

;----------------------------------------------------------------------------------
; Component Selection page:
Func Install_Page4()
	Local $T, $L, $x, $y = 2

	; If the path chosen already exists, ask user if it is OK to install to the folder alway:
	If $GUI2 <> 0 Then
		$DIR = GUICtrlRead($GUI2)
		If $DIR = "" Then Return
		If FileExists($DIR) And $CONFIG = 2 Then
			If MsgBox(0x24, _ReadStr("Inst_4B"), StringReplace(_FormatStr("Inst_4C", $DIR), "|", @CRLF), 0, $GUI) = 7 Then Return
		EndIf
	EndIf

	; Start building the 4th page:
	Local $OLD = $GUI
	Local $POS = WinGetPos(_ReadStr("Inst_1A") & " - " & $TITLE)
	If @error = 1 Then
		$GUI = GUICreate(_ReadStr("Inst_1A") & " - " & $TITLE, 500, 360)
	Else
		$GUI = GUICreate(_ReadStr("Inst_1A") & " - " & $TITLE, 500, 360, $POS[0], $POS[1])
	EndIf
	GUISetFont(9, 400)
	GUISetOnEvent($GUI_EVENT_CLOSE, "Install_Cancel")
	GUICtrlCreateGroup("", 0, 314, 500, 1)
	GUICtrlCreatePic(@TempDir & "\Logo0.jpg", 0, 0, 164, 314)
	GUICtrlCreateGroup(_ReadStr("Inst_4A"), 170, 10, 320, 295)
	GUICtrlSetFont(-1, 12, 800)

	; Populate the $LV variable with size and filename info if not already populated:
	_Theme_Load()
	$T = StringSplit($THEME_LIST, "|")
	$L = StringSplit($LANG_FILE, "|")
	Dim $LV[3 + UBound($T) + UBound($L)][5]
	$LV[1][0] = 1
	$LV[1][2] = @ScriptName
	$LV[1][3] = FileGetSize(@ScriptFullPath) + FileGetSize("cablite.dll")
	$LV[0][3] = $LV[1][3]
	For $x = 2 To $T[0]
		$LV[$y][0] = 1
		$LV[$y][2] = "Themes\" & $T[$x]
		$LV[$y][2] &= _Iif(FileExists($LV[$y][2] & ".dll"), ".dll", ".icl")
		$LV[$y][3] = FileGetSize($LV[$y][2])
		$LV[0][3] += $LV[$y][3]
		$y += 1
	Next
	For $x = 1 To $L[0] - 1
		$LV[$y][0] = 1
		$LV[$y][2] = "Language\" & $L[$x] & ".ini"
		$LV[$y][3] = FileGetSize($LV[$y][2])
		$LV[0][3] += $LV[$y][3]
		$y += 1
	Next
	$LV[0][0] = $y - 1

	;If passive or silent install, skip showing this screen.  Otherwise, build rest of Page 4 GUI:
	If $CONFIG > 2 Then Return Install_Page5()
	GUICtrlCreateButton("< " & _ReadStr("Inst_2H"), 240, 325, 80, 25)
	GUICtrlSetOnEvent(-1, "Install_Page3")
	GUICtrlCreateButton(_ReadStr("Inst_1D") & " >", 320, 325, 80, 25)
	GUICtrlSetState(-1, $GUI_DEFBUTTON)
	GUICtrlSetOnEvent(-1, "Install_Page5")
	GUICtrlCreateButton(_ReadStr("GUI_NO"), 410, 325, 80, 25)
	GUICtrlSetOnEvent(-1, "Install_Cancel")
	;GUISetState()
	;If $OLD <> 0 Then GUIDelete($OLD)
	Install_Page5()
	Return
EndFunc   ;==>Install_Page4

;----------------------------------------------------------------------------------
; Shortcut Creation page:
Func Install_Page5()
	; If passive or silent install, skip this screen.  Otherwise, build the 5th page:
	If $CONFIG > 2 Then Return Install_Complete()
	Local $OLD = $GUI
	Local $POS = WinGetPos(_ReadStr("Inst_1A") & " - " & $TITLE)
	If @error = 1 Then
		$GUI = GUICreate(_ReadStr("Inst_1A") & " - " & $TITLE, 500, 360)
	Else
		$GUI = GUICreate(_ReadStr("Inst_1A") & " - " & $TITLE, 500, 360, $POS[0], $POS[1])
	EndIf
	GUISetFont(9, 400)
	GUISetOnEvent($GUI_EVENT_CLOSE, "Install_Cancel")
	GUICtrlCreateGroup("", 0, 314, 500, 1)
	GUICtrlCreatePic(@TempDir & "\Logo0.jpg", 0, 0, 164, 314)
	GUICtrlCreateGroup(_ReadStr("Inst_5A"), 170, 10, 320, 295)
	GUICtrlSetFont(-1, 12, 800)
	GUICtrlCreateLabel(_FormatStr("Inst_5B", $TITLE), 180, 50, 300, 30)
	$GUI2 = GUICtrlCreateEdit(_Iif($SDIR = @TAB, "", $SDIR), 180, 90, 300, 25, BitOR($ES_WANTRETURN, $ES_AUTOVSCROLL, $ES_AUTOHSCROLL))
	GUICtrlCreateButton(_ReadStr("Inst_5C"), 400, 120, 80, 25)
	GUICtrlSetOnEvent(-1, "Install_Shortcut")
	GUICtrlCreateButton("< " & _ReadStr("Inst_2H"), 240, 325, 80, 25)
	GUICtrlSetOnEvent(-1, "Install_Page4")
	GUICtrlCreateButton("Install", 320, 325, 80, 25)
	GUICtrlSetState(-1, $GUI_DEFBUTTON)
	GUICtrlSetOnEvent(-1, "Install_Complete")
	GUICtrlCreateButton(_ReadStr("GUI_NO"), 410, 325, 80, 25)
	GUICtrlSetOnEvent(-1, "Install_Cancel")
	GUISetState()
	If $OLD <> 0 Then GUIDelete($OLD)
EndFunc   ;==>Install_Page5

Func Install_Shortcut()
	$SDIR = GUICtrlRead($GUI2)
	If FileExists($SDIR) = 0 Then $SDIR = $TITLE
	Local $T = FileSelectFolder(_ReadStr("Inst_3D"), @ProgramsCommonDir, 7, $SDIR)
	If $T <> "" Then
		GUICtrlSetData($GUI2, $SDIR)
		$SDIR = $T
	EndIf
EndFunc   ;==>Install_Shortcut

;----------------------------------------------------------------------------------
; Installation page
Func Install_Complete()
	Local $STEP, $File, $BAR, $Total = $LV[0][3], $SUM = 0, $x, $TMP, $Ver1, $Ver2
	If $GUI2 <> 0 Then $SDIR = GUICtrlRead($GUI2)

	; Create the Installation page GUI and show ONLY if normal or passive install:
	Local $OLD = $GUI, $POS = WinGetPos(_ReadStr("Inst_1A") & " - " & $TITLE)
	If @error = 1 Then
		$GUI = GUICreate(_ReadStr("Inst_1A") & " - " & $TITLE, 500, 360)
	Else
		$GUI = GUICreate(_ReadStr("Inst_1A") & " - " & $TITLE, 500, 360, $POS[0], $POS[1])
	EndIf
	GUISetFont(9, 400)
	GUICtrlCreateGroup("", 0, 314, 500, 1)
	GUICtrlCreatePic(@TempDir & "\Logo0.jpg", 0, 0, 164, 314)
	GUICtrlCreateGroup(_ReadStr("Inst_6A"), 170, 10, 320, 295)
	GUICtrlSetFont(-1, 12, 800)
	GUICtrlCreateLabel(_FormatStr("Inst_6B", $TITLE), 180, 50, 300, 30)
	$STEP = GUICtrlCreateLabel(_ReadStr("Inst_6C"), 180, 110, 300, 30)
	$File = GUICtrlCreateLabel("", 180, 130, 300, 40)
	GUICtrlSetFont(-1, 8.5, 400)
	$BAR = GUICtrlCreateProgress(180, 160, 300, 20, $PBS_SMOOTH)
	If $CONFIG < 4 Then GUISetState()
	If $OLD <> 0 Then GUIDelete($OLD)

	; Send message to DriveSpace executables to shut down immediately:
	_Send_Message(0x8002)
	While 1
		$TMP = ProcessList("DrvSpace.exe")
		If $TMP[0][0] <= 1 Then ExitLoop
		For $i = 1 To $TMP[0][0]
			If $TMP <> @AutoItPID Then ProcessClose($TMP)
		Next
	WEnd

	; Begin copying files to the destination folder:
	GUICtrlSetData($STEP, _ReadStr("Inst_6D"))
	DirCreate($DIR)
	DirCreate($DIR & "\Language")
	DirCreate($DIR & "\Themes")
	For $x = 1 To $LV[0][0]
		If $LV[$x][0] = 1 Then
			GUICtrlSetData($File, $LV[$x][2])
			If StringRight($LV[$x][2], 4) = ".ini" And FileExists($DIR & "\" & $LV[$x][2]) Then
				$Ver1 = IniRead($LV[$x][2], "Info", "Version", "999.999.999.999")
				$Ver2 = IniRead($DIR & "\" & $LV[$x][2], "Info", "Version", "999.999.999.999")
				If $Ver2 < "5.2.0.0" Then
					FileDelete($DIR & "\" & $LV[$x][2])
				Else
					If $Ver1 >= $Ver2 Then FileCopy($LV[$x][2], $DIR & "\" & $LV[$x][2], 1)
				EndIf
			Else
				FileCopy($LV[$x][2], $DIR & "\" & $LV[$x][2], 1)
				If $x = 1 Then
					FileCopy(@ScriptDir & "\CabLite.dll", $DIR & "\CabLite.dll", 1)
					FileDelete($DIR & "\MD5Deep.exe")
				EndIf
			EndIf
			$SUM += $LV[$x][3]
			GUICtrlSetData($BAR, ($SUM * 100) / $Total)
		EndIf
	Next

	; Create the shortcut for this program:
	If $SDIR <> @TAB Then
		DirCreate(@ProgramsCommonDir & "\" & $SDIR)
		FileCreateShortcut($DIR & "\DrvSpace.exe", @ProgramsCommonDir & "\" & $SDIR & "\Drive Space Indicator.lnk")
		FileCreateShortcut($DIR & "\DrvSpace.exe", @ProgramsCommonDir & "\" & $SDIR & "\Uninstall DSI.lnk", $DIR, "/REMOVE")
	EndIf

	; Write current settings to the registry:
	RegWrite($KEY, "Language", "REG_SZ", $LANG_SEL)
	RegWrite($KEY, "Minutes", "REG_DWORD", $MIN)
	RegWrite($KEY, "Check_Daily", "REG_DWORD", $DAILY)
	RegWrite($KEY, "Floppy_Bar", "REG_DWORD", $FLOPPY_BAR)
	RegWrite($KEY, "No_Bar", "REG_DWORD", $NO_BAR)
	RegWrite($KEY, "Library", "REG_SZ", $THEME_SEL)
	RegWrite($KEY, "Program_Tray", "REG_DWORD", $PROGTRAY[0])
	RegWrite($KEY, "Library_Icon", "REG_DWORD", $LIBICON)
	RegWrite($KEY, "Delete_Icons", "REG_DWORD", $DEL_ICONS)
	RegWrite($KEY, "Monitor_Shortcuts", "REG_DWORD", $MONITOR)
	RegWrite($KEY, "Startup_Delay", "REG_DWORD", $DELAY)

	; Create registry entries for Application Uninstall:
	GUICtrlSetData($STEP, _ReadStr("Inst_6E"))
	GUICtrlSetData($File, "")
	$KEY = "HKLM" & $PROC & "\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\DriveSpace"
	RegWrite($KEY, "DisplayName", "REG_SZ", $TITLE)
	RegWrite($KEY, "DisplayVersion", "REG_SZ", FileGetVersion(@ScriptName))
	$TMP = _ReadStr("Inst_6F")
	RegWrite($KEY, "Comments", "REG_SZ", $TMP)
	RegWrite($KEY, "Publisher", "REG_SZ", "Douglas Orend (aka Dougiefresh)")
	RegWrite($KEY, "UninstallString", "REG_SZ", """" & $DIR & "\DrvSpace.exe"" /REMOVE")
	RegWrite($KEY, "URLInfoAbout", "REG_SZ", "http://www.ryanvm.net/forum/viewtopic.php?t=5454")
	RegWrite($KEY, "URLUpdateInfo", "REG_SZ", "http://www.ryanvm.net/forum/viewtopic.php?t=5454")
	RegWrite($KEY, "Shortcut", "REG_SZ", $SDIR)

	; Create Control Panel applet for this Application:
	$KEY = "HKCR" & $PROC & "\CLSID\" & $CLSID
	RegWrite($KEY, "", "REG_SZ", $TITLE)
	RegWrite($KEY, "InfoTip", "REG_SZ", $TMP)
	RegWrite($KEY & "\DefaultIcon", "", "REG_SZ", """" & $DIR & "\DrvSpace.exe"",0")
	RegWrite($KEY & "\Shell\Open\Command", "", "REG_SZ", """" & $DIR & "\DrvSpace.exe"" /CONFIG")
	$KEY = "HKLM" & $PROC & "\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel\NameSpace"
	RegWrite($KEY & "\" & $CLSID, "", "REG_SZ", $TITLE)

	; Remove other known uninstallers for this program:
	RegDelete("HKLM" & $PROC & "\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\" & $CLSID)

	; Call final function if passive or silent install:
	$RUN = 1
	If $CONFIG > 2 Then Install_Exit()

	;----------------------------------------------------------------------------------
	; Begin building the 7th page of the Install GUI:
	$OLD = $GUI
	$POS = WinGetPos(_ReadStr("Inst_1A") & " - " & $TITLE)
	If @error = 1 Then
		$GUI = GUICreate(_ReadStr("Inst_1A") & " - " & $TITLE, 500, 360)
	Else
		$GUI = GUICreate(_ReadStr("Inst_1A") & " - " & $TITLE, 500, 360, $POS[0], $POS[1])
	EndIf
	GUISetFont(9, 400)
	GUISetOnEvent($GUI_EVENT_CLOSE, "Install_Cancel")
	GUICtrlCreateGroup("", 0, 314, 500, 1)
	GUICtrlCreatePic(@TempDir & "\Logo0.jpg", 0, 0, 164, 314)
	GUICtrlCreateGroup(_ReadStr("Inst_7A"), 170, 10, 320, 295)
	GUICtrlSetFont(-1, 12, 800)
	GUICtrlCreateLabel(StringReplace(_FormatStr("Inst_7B", $TITLE), "|", @CRLF), 185, 40, 300, 70)
	GUICtrlCreateCheckbox(_FormatStr("Inst_7C", $TITLE), 185, 120, 300, 20)
	GUICtrlSetOnEvent(-1, "Install_Windows")
	GUICtrlSetState(-1, $GUI_CHECKED)
	$OS = GUICtrlCreateCheckbox(_FormatStr("Inst_7D", $TITLE), 185, 150, 300, 20)
	GUICtrlSetState(-1, $GUI_CHECKED)
	GUICtrlCreateButton(_ReadStr("Inst_7E"), 410, 325, 80, 25)
	GUICtrlSetOnEvent(-1, "Install_Exit")
	GUICtrlSetState(-1, $GUI_DEFBUTTON)
	GUISetState()
	If $OLD <> 0 Then GUIDelete($OLD)
EndFunc   ;==>Install_Complete

Func Install_Windows()
	$RUN = _Iif($RUN, False, True)
EndFunc   ;==>Install_Windows

Func Install_Exit()
	Local $S = _Iif($BETA, " /BETA", "")
	If $RUN = 1 Then RegWrite($RUNKEY, "DriveSpace", "REG_SZ", """" & $DIR & "\DrvSpace.exe"" /STARTUP" & $S)
	If (GUICtrlRead($OS) = 1 Or $CONFIG > 2) And $SVCPACK = 0 Then Run($DIR & "\DrvSpace.exe " & $S, $DIR)
	Exit
EndFunc   ;==>Install_Exit

;==================================================================================
; Function responsible for Program Removal:
;==================================================================================
Func _Program_Remove()
	; Prompt user whether this action is to be done.  If not, abort!  Otherwise, uninstall:
	If MsgBox(0x24, $TITLE, _FormatStr("REM_01", $TITLE), 0, $GUI) = 7 Then Exit
	ProgressOn(_ReadStr("REM_02"), _ReadStr("Inst_6C"))

	; Send message to DriveSpace executables to shut down immediately:
	_Send_Message(0x8002)
	While 1
		$TMP = ProcessList("DrvSpace.exe")
		If $TMP[0][0] = 1 Then ExitLoop
		For $i = 1 To $TMP[0][0]
			If $TMP[$i][1] <> @AutoItPID Then ProcessClose($TMP[$i][1])
		Next
	WEnd

	; Let's get rid of the program files:
	ProgressSet(10, _ReadStr("REM_03"))
	$SDIR = RegRead("HKLM" & $PROC & "\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\DriveSpace", "Shortcut")
	RegDelete("HKLM" & $PROC & "\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\DriveSpace")
	RegDelete("HKCR" & $PROC & "\CLSID\" & $CLSID)
	RegDelete("HKLM" & $PROC & "\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel\NameSpace\" & $CLSID)
	RegDelete($RUNKEY, "DriveSpace")
	RegDelete($KEY)
	ProgressSet(20, _ReadStr("REM_04"))
	DirRemove(@ScriptDir & "\Themes", 1)
	Local $DONE = _ReadStr("REM_05")
	ProgressSet(90, _ReadStr("REM_04"))
	DirRemove(@ScriptDir & "\Language", 1)
	FileDelete($SDIR & "\Drive Space Indicator.lnk")
	FileDelete($SDIR & "\Uninstall DSI.lnk")
	DirRemove($SDIR)
	ProgressOff()
	MsgBox(0x40, $TITLE, StringFormat($DONE, $TITLE), 0, $GUI)

	; Use batch file to delete this program, since the program can't delete itself:
	FileDelete(@TempDir & "\Scratch.bat")
	FileWrite(@TempDir & "\Scratch.bat", ':loop' & @CRLF & _
			'del "' & @ScriptFullPath & '"' & @CRLF & _
			'if exist "' & @ScriptFullPath & '" goto loop' & @CRLF & _
			'rd /s /q "' & @ScriptDir & '"' & @CRLF & _
			'del ' & @TempDir & '\scratch.bat' & @CRLF)
	Run(@TempDir & "\scratch.bat", @TempDir, @SW_HIDE)
	Exit
EndFunc   ;==>_Program_Remove