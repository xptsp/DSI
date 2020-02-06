AutoItSetOption("TrayIconDebug", 1)
#include <String.au3>
#include <WindowsConstants.au3>
#include <StaticConstants.au3>
#include <Constants.au3>
#include <GUIConstants.au3>

Dim $CabLiteDll = DllOpen(@ScriptDir & "\CAB\CabLite.dll"), $BETA = 0
If @error = -1 Then MsgBox(0, "", "Error opening CabLite.dll")

$A = MsgBox(0x23, "Build AddOn", "Compile the DrvSpace script into an executable?")
If $A = 2 Then Exit
If $A = 6 Then
	Run("C:\Program Files (x86)\AutoIt3\SciTE\AutoIt3Wrapper\AutoIt3Wrapper_Gui.exe /in Source\DrvSpace.au3")
	WinWaitActive("AutoIt3Wrapper GUI")
	Send("{Enter}")
	WinWaitActive("(1.10.1.14) Processing : DrvSpace.au3")
	While 1
		If WinExists("Obfuscator Warnings/Errors", "Do you want to stop the Compile?") Then Send("{Tab}{Enter}")
		If WinExists("(1.10.1.14) Processing : DrvSpace.au3") = 0 Then ExitLoop
		Sleep(1000)
	WEnd
	Sleep(5000)
EndIf

; Get last file version of add-on present in folder:
$VER = FileGetVersion("CAB\DrvSpace.exe")
If $VER = "3.3.0.0" Then
	MsgBox(0, "Build AddOn", "Program does not have proper version number!  Rerun script!")
	Exit
EndIf
$FILE = "DriveSpace_v" & $VER
If $BETA = 0 Then FileDelete("DriveSpace_v*.*")
IniWrite("AddOn\Entries_DriveSpace.ini", "General", "version", $VER)

; Build the Source archive:
;=============================================================================
FileDelete("D:\XPCD\Support\Misc\DriveSpace_*_Source.*")
RunWait("C:\Program Files\winrar\rar a -m5 -se -md4096 -pz1995dah D:\XPCD\Support\Misc\" & $FILE & "_Source.rar " & _
		"AddOn\Entries* Source\* Vista\* WinXP\* ModernMenuLib_with_Tray\* Test\* *.au3 *.ijf -xVista\thumbs.db")

; Build the SFX:
;=============================================================================
RunWait("C:\Program Files\7-zip\7zG.exe a -r -mx9 ..\CAB.7z *.*", "CAB")
FileDelete($FILE & "*.exe")
RunWait(@ComSpec & " /c copy /b Source\7ZSD_All.sfx+Source\config.txt+CAB.7z " & $FILE & "_SFX.exe")
RunWait(@ComSpec & " /c copy /b Source\7ZSD_All.sfx+Source\silent.txt+CAB.7z " & $FILE & "_Silent.exe")
FileDelete("CAB.7z")

; Build the Add-On:
;=============================================================================
FileDelete("AddOn\SVCPACK\DriveSpace.exe")
FileCopy($FILE & "_Silent.exe", "AddOn\SVCPACK\DriveSpc.exe", 1)
FileDelete($FILE & "_AddOn.7z")
RunWait("C:\Program Files\7-zip\7zG.exe a -r -mx9 ..\" & $FILE & "_AddOn.7z *.*", "AddOn")