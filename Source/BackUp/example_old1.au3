
#include "ModernMenuRaw.au3"

GUICreate($TITLE, 390, 430)
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

