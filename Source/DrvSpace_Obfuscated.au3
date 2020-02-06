#NoTrayIcon
Global Const $TVS_HASBUTTONS = 0x00000001
Global Const $TVS_HASLINES = 0x00000002
Global Const $TVS_LINESATROOT = 0x00000004
Global Const $TVS_EDITLABELS = 0x00000008
Global Const $TVS_DISABLEDRAGDROP = 0x00000010
Global Const $TVS_SHOWSELALWAYS = 0x00000020
Global Const $TVS_RTLREADING = 0x00000040
Global Const $TVS_NOTOOLTIPS = 0x00000080
Global Const $TVS_CHECKBOXES = 0x00000100
Global Const $TVS_TRACKSELECT = 0x00000200
Global Const $TVS_SINGLEEXPAND = 0x00000400
Global Const $TVS_INFOTIP = 0x00000800
Global Const $TVS_FULLROWSELECT = 0x00001000
Global Const $TVS_NOSCROLL = 0x00002000
Global Const $TVS_NONEVENHEIGHT = 0x00004000
Global Const $TVS_NOHSCROLL = 0x00008000
Global Const $TVS_DEFAULT = 0x00000037
Global Const $GUI_SS_DEFAULT_TREEVIEW = BitOR($TVS_HASBUTTONS, $TVS_HASLINES, $TVS_LINESATROOT, $TVS_DISABLEDRAGDROP, $TVS_SHOWSELALWAYS)
Global Const $TVE_COLLAPSE = 0x0001
Global Const $TVE_EXPAND = 0x0002
Global Const $TVE_TOGGLE = 0x0003
Global Const $TVE_EXPANDPARTIAL = 0x4000
Global Const $TVE_COLLAPSERESET = 0x8000
Global Const $TVGN_ROOT = 0x00000000
Global Const $TVGN_NEXT = 0x00000001
Global Const $TVGN_PREVIOUS = 0x00000002
Global Const $TVGN_PARENT = 0x00000003
Global Const $TVGN_CHILD = 0x00000004
Global Const $TVGN_FIRSTVISIBLE = 0x00000005
Global Const $TVGN_NEXTVISIBLE = 0x00000006
Global Const $TVGN_PREVIOUSVISIBLE = 0x00000007
Global Const $TVGN_DROPHILITE = 0x00000008
Global Const $TVGN_CARET = 0x00000009
Global Const $TVGN_LASTVISIBLE = 0x0000000A
Global Const $TVHT_NOWHERE = 0x00000001
Global Const $TVHT_ONITEMICON = 0x00000002
Global Const $TVHT_ONITEMLABEL = 0x00000004
Global Const $TVHT_ONITEMINDENT = 0x00000008
Global Const $TVHT_ONITEMBUTTON = 0x00000010
Global Const $TVHT_ONITEMRIGHT = 0x00000020
Global Const $TVHT_ONITEMSTATEICON = 0x00000040
Global Const $TVHT_ONITEM = 0x00000046
Global Const $TVHT_ABOVE = 0x00000100
Global Const $TVHT_BELOW = 0x00000200
Global Const $TVHT_TORIGHT = 0x00000400
Global Const $TVHT_TOLEFT = 0x00000800
Global Const $TVI_ROOT = 0xFFFF0000
Global Const $TVI_FIRST = 0xFFFF0001
Global Const $TVI_LAST = 0xFFFF0002
Global Const $TVI_SORT = 0xFFFF0003
Global Const $TVIF_TEXT = 0x00000001
Global Const $TVIF_IMAGE = 0x00000002
Global Const $TVIF_PARAM = 0x00000004
Global Const $TVIF_STATE = 0x00000008
Global Const $TVIF_HANDLE = 0x00000010
Global Const $TVIF_SELECTEDIMAGE = 0x00000020
Global Const $TVIF_CHILDREN = 0x00000040
Global Const $TVIF_INTEGRAL = 0x00000080
Global Const $TVIF_DI_SETITEM = 0x00001000
Global Const $TVSIL_NORMAL = 0
Global Const $TVSIL_STATE = 2
Global Const $TVC_BYKEYBOARD = 0x2
Global Const $TVC_BYMOUSE = 0x1
Global Const $TVC_UNKNOWN = 0x0
Global Const $TVIS_FOCUSED = 0x00000001
Global Const $TVIS_SELECTED = 0x00000002
Global Const $TVIS_CUT = 0x00000004
Global Const $TVIS_DROPHILITED = 0x00000008
Global Const $TVIS_BOLD = 0x00000010
Global Const $TVIS_EXPANDED = 0x00000020
Global Const $TVIS_EXPANDEDONCE = 0x00000040
Global Const $TVIS_EXPANDPARTIAL = 0x00000080
Global Const $TVIS_OVERLAYMASK = 0x00000F00
Global Const $TVIS_STATEIMAGEMASK = 0x0000F000
Global Const $TVIS_USERMASK = 0x0000F000
Global Const $TVIS_UNCHECKED = 4096
Global Const $TVIS_CHECKED = 8192
Global Const $TVNA_ADD = 1
Global Const $TVNA_ADDFIRST = 2
Global Const $TVNA_ADDCHILD = 3
Global Const $TVNA_ADDCHILDFIRST = 4
Global Const $TVNA_INSERT = 5
Global Const $TVTA_ADDFIRST = 1
Global Const $TVTA_ADD = 2
Global Const $TVTA_INSERT = 3
Global Const $TV_FIRST = 0x1100
Global Const $TVM_INSERTITEMA = $TV_FIRST + 0
Global Const $TVM_DELETEITEM = $TV_FIRST + 1
Global Const $TVM_EXPAND = $TV_FIRST + 2
Global Const $TVM_GETITEMRECT = $TV_FIRST + 4
Global Const $TVM_GETCOUNT = $TV_FIRST + 5
Global Const $TVM_GETINDENT = $TV_FIRST + 6
Global Const $TVM_SETINDENT = $TV_FIRST + 7
Global Const $TVM_GETIMAGELIST = $TV_FIRST + 8
Global Const $TVM_SETIMAGELIST = $TV_FIRST + 9
Global Const $TVM_GETNEXTITEM = $TV_FIRST + 10
Global Const $TVM_SELECTITEM = $TV_FIRST + 11
Global Const $TVM_GETITEMA = $TV_FIRST + 12
Global Const $TVM_SETITEMA = $TV_FIRST + 13
Global Const $TVM_EDITLABELA = $TV_FIRST + 14
Global Const $TVM_GETEDITCONTROL = $TV_FIRST + 15
Global Const $TVM_GETVISIBLECOUNT = $TV_FIRST + 16
Global Const $TVM_HITTEST = $TV_FIRST + 17
Global Const $TVM_CREATEDRAGIMAGE = $TV_FIRST + 18
Global Const $TVM_SORTCHILDREN = $TV_FIRST + 19
Global Const $TVM_ENSUREVISIBLE = $TV_FIRST + 20
Global Const $TVM_SORTCHILDRENCB = $TV_FIRST + 21
Global Const $TVM_ENDEDITLABELNOW = $TV_FIRST + 22
Global Const $TVM_GETISEARCHSTRINGA = $TV_FIRST + 23
Global Const $TVM_SETTOOLTIPS = $TV_FIRST + 24
Global Const $TVM_GETTOOLTIPS = $TV_FIRST + 25
Global Const $TVM_SETINSERTMARK = $TV_FIRST + 26
Global Const $TVM_SETITEMHEIGHT = $TV_FIRST + 27
Global Const $TVM_GETITEMHEIGHT = $TV_FIRST + 28
Global Const $TVM_SETBKCOLOR = $TV_FIRST + 29
Global Const $TVM_SETTEXTCOLOR = $TV_FIRST + 30
Global Const $TVM_GETBKCOLOR = $TV_FIRST + 31
Global Const $TVM_GETTEXTCOLOR = $TV_FIRST + 32
Global Const $TVM_SETSCROLLTIME = $TV_FIRST + 33
Global Const $TVM_GETSCROLLTIME = $TV_FIRST + 34
Global Const $TVM_SETINSERTMARKCOLOR = $TV_FIRST + 37
Global Const $TVM_GETINSERTMARKCOLOR = $TV_FIRST + 38
Global Const $TVM_GETITEMSTATE = $TV_FIRST + 39
Global Const $TVM_SETLINECOLOR = $TV_FIRST + 40
Global Const $TVM_GETLINECOLOR = $TV_FIRST + 41
Global Const $TVM_MAPACCIDTOHTREEITEM = $TV_FIRST + 42
Global Const $TVM_MAPHTREEITEMTOACCID = $TV_FIRST + 43
Global Const $TVM_INSERTITEMW = $TV_FIRST + 50
Global Const $TVM_GETITEMW = $TV_FIRST + 62
Global Const $TVM_SETITEMW = $TV_FIRST + 63
Global Const $TVM_GETISEARCHSTRINGW = $TV_FIRST + 64
Global Const $TVM_EDITLABELW = $TV_FIRST + 65
Global Const $TVM_GETUNICODEFORMAT = 0x2000 + 6
Global Const $TVM_SETUNICODEFORMAT = 0x2000 + 5
Global Const $TVN_FIRST = -400
Global Const $TVN_SELCHANGINGA = $TVN_FIRST - 1
Global Const $TVN_SELCHANGEDA = $TVN_FIRST - 2
Global Const $TVN_GETDISPINFOA = $TVN_FIRST - 3
Global Const $TVN_SETDISPINFOA = $TVN_FIRST - 4
Global Const $TVN_ITEMEXPANDINGA = $TVN_FIRST - 5
Global Const $TVN_ITEMEXPANDEDA = $TVN_FIRST - 6
Global Const $TVN_BEGINDRAGA = $TVN_FIRST - 7
Global Const $TVN_BEGINRDRAGA = $TVN_FIRST - 8
Global Const $TVN_DELETEITEMA = $TVN_FIRST - 9
Global Const $TVN_BEGINLABELEDITA = $TVN_FIRST - 10
Global Const $TVN_ENDLABELEDITA = $TVN_FIRST - 11
Global Const $TVN_KEYDOWN = $TVN_FIRST - 12
Global Const $TVN_GETINFOTIPA = $TVN_FIRST - 13
Global Const $TVN_GETINFOTIPW = $TVN_FIRST - 14
Global Const $TVN_SINGLEEXPAND = $TVN_FIRST - 15
Global Const $TVN_SELCHANGINGW = $TVN_FIRST - 50
Global Const $TVN_SELCHANGEDW = $TVN_FIRST - 51
Global Const $TVN_GETDISPINFOW = $TVN_FIRST - 52
Global Const $TVN_SETDISPINFOW = $TVN_FIRST - 53
Global Const $TVN_ITEMEXPANDINGW = $TVN_FIRST - 54
Global Const $TVN_ITEMEXPANDEDW = $TVN_FIRST - 55
Global Const $TVN_BEGINDRAGW = $TVN_FIRST - 56
Global Const $TVN_BEGINRDRAGW = $TVN_FIRST - 57
Global Const $TVN_DELETEITEMW = $TVN_FIRST - 58
Global Const $TVN_BEGINLABELEDITW = $TVN_FIRST - 59
Global Const $TVN_ENDLABELEDITW = $TVN_FIRST - 60
Global Const $E_INVALIDARG = 0x80070057
Global Const $ILC_MASK = 0x00000001
Global Const $ILC_COLOR = 0x00000000
Global Const $ILC_COLORDDB = 0x000000FE
Global Const $ILC_COLOR4 = 0x00000004
Global Const $ILC_COLOR8 = 0x00000008
Global Const $ILC_COLOR16 = 0x00000010
Global Const $ILC_COLOR24 = 0x00000018
Global Const $ILC_COLOR32 = 0x00000020
Global Const $ILC_PALETTE = 0x00000800
Global Const $ILC_MIRROR = 0x00002000
Global Const $ILC_PERITEMMIRROR = 0x00008000
Global Const $ILCF_MOVE = 0x0
Global Const $ILCF_SWAP = 0x1
Global Const $ILD_NORMAL = 0x00000000
Global Const $ILD_TRANSPARENT = 0x00000001
Global Const $ILD_BLEND25 = 0x00000002
Global Const $ILD_BLEND50 = 0x00000004
Global Const $ILD_MASK = 0x00000010
Global Const $ILD_IMAGE = 0x00000020
Global Const $ILD_ROP = 0x00000040
Global Const $ILD_OVERLAYMASK = 0x00000F00
Global Const $ILS_NORMAL = 0x00000000
Global Const $ILS_GLOW = 0x00000001
Global Const $ILS_SHADOW = 0x00000002
Global Const $ILS_SATURATE = 0x00000004
Global Const $ILS_ALPHA = 0x00000008
Global Const $tagPOINT = "long X;long Y"
Global Const $tagRECT = "long Left;long Top;long Right;long Bottom"
Global Const $tagSIZE = "long X;long Y"
Global Const $tagMARGINS = "int cxLeftWidth;int cxRightWidth;int cyTopHeight;int cyBottomHeight"
Global Const $tagFILETIME = "dword Lo;dword Hi"
Global Const $tagSYSTEMTIME = "word Year;word Month;word Dow;word Day;word Hour;word Minute;word Second;word MSeconds"
Global Const $tagTIME_ZONE_INFORMATION = "long Bias;wchar StdName[32];word StdDate[8];long StdBias;wchar DayName[32];word DayDate[8];long DayBias"
Global Const $tagNMHDR = "hwnd hWndFrom;uint_ptr IDFrom;INT Code"
Global Const $tagCOMBOBOXEXITEM = "uint Mask;int_ptr Item;ptr Text;int TextMax;int Image;int SelectedImage;int OverlayImage;" & _
"int Indent;lparam Param"
Global Const $tagNMCBEDRAGBEGIN = $tagNMHDR & ";int ItemID;ptr szText"
Global Const $tagNMCBEENDEDIT = $tagNMHDR & ";bool fChanged;int NewSelection;ptr szText;int Why"
Global Const $tagNMCOMBOBOXEX = $tagNMHDR & ";uint Mask;int_ptr Item;ptr Text;int TextMax;int Image;" & _
"int SelectedImage;int OverlayImage;int Indent;lparam Param"
Global Const $tagDTPRANGE = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;" & _
"word MinSecond;word MinMSecond;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;" & _
"word MaxMinute;word MaxSecond;word MaxMSecond;bool MinValid;bool MaxValid"
Global Const $tagNMDATETIMECHANGE = $tagNMHDR & ";dword Flag;" & $tagSYSTEMTIME
Global Const $tagNMDATETIMEFORMAT = $tagNMHDR & ";ptr Format;" & $tagSYSTEMTIME & ";ptr pDisplay;wchar Display[64]"
Global Const $tagNMDATETIMEFORMATQUERY = $tagNMHDR & ";ptr Format;long SizeX;long SizeY"
Global Const $tagNMDATETIMEKEYDOWN = $tagNMHDR & ";int VirtKey;ptr Format;" & $tagSYSTEMTIME
Global Const $tagNMDATETIMESTRING = $tagNMHDR & ";ptr UserString;" & $tagSYSTEMTIME & ";dword Flags"
Global Const $tagEVENTLOGRECORD = "dword Length;dword Reserved;dword RecordNumber;dword TimeGenerated;dword TimeWritten;dword EventID;" & _
"word EventType;word NumStrings;word EventCategory;word ReservedFlags;dword ClosingRecordNumber;dword StringOffset;" & _
"dword UserSidLength;dword UserSidOffset;dword DataLength;dword DataOffset"
Global Const $tagGDIPBITMAPDATA = "uint Width;uint Height;int Stride;int Format;ptr Scan0;uint_ptr Reserved"
Global Const $tagGDIPENCODERPARAM = "byte GUID[16];dword Count;dword Type;ptr Values"
Global Const $tagGDIPENCODERPARAMS = "dword Count;byte Params[0]"
Global Const $tagGDIPRECTF = "float X;float Y;float Width;float Height"
Global Const $tagGDIPSTARTUPINPUT = "uint Version;ptr Callback;bool NoThread;bool NoCodecs"
Global Const $tagGDIPSTARTUPOUTPUT = "ptr HookProc;ptr UnhookProc"
Global Const $tagGDIPIMAGECODECINFO = "byte CLSID[16];byte FormatID[16];ptr CodecName;ptr DllName;ptr FormatDesc;ptr FileExt;" & _
"ptr MimeType;dword Flags;dword Version;dword SigCount;dword SigSize;ptr SigPattern;ptr SigMask"
Global Const $tagGDIPPENCODERPARAMS = "dword Count;byte Params[0]"
Global Const $tagHDITEM = "uint Mask;int XY;ptr Text;handle hBMP;int TextMax;int Fmt;lparam Param;int Image;int Order;uint Type;ptr pFilter;uint State"
Global Const $tagNMHDDISPINFO = $tagNMHDR & ";int Item;uint Mask;ptr Text;int TextMax;int Image;lparam lParam"
Global Const $tagNMHDFILTERBTNCLICK = $tagNMHDR & ";int Item;" & $tagRECT
Global Const $tagNMHEADER = $tagNMHDR & ";int Item;int Button;ptr pItem"
Global Const $tagGETIPAddress = "byte Field4;byte Field3;byte Field2;byte Field1"
Global Const $tagNMIPADDRESS = $tagNMHDR & ";int Field;int Value"
Global Const $tagLVFINDINFO = "uint Flags;ptr Text;lparam Param;" & $tagPOINT & ";uint Direction"
Global Const $tagLVHITTESTINFO = $tagPOINT & ";uint Flags;int Item;int SubItem"
Global Const $tagLVITEM = "uint Mask;int Item;int SubItem;uint State;uint StateMask;ptr Text;int TextMax;int Image;lparam Param;" & _
"int Indent;int GroupID;uint Columns;ptr pColumns"
Global Const $tagNMLISTVIEW = $tagNMHDR & ";int Item;int SubItem;uint NewState;uint OldState;uint Changed;" & _
"long ActionX;long ActionY;lparam Param"
Global Const $tagNMLVCUSTOMDRAW = $tagNMHDR & ";dword dwDrawStage;handle hdc;long Left;long Top;long Right;long Bottom;" & _
"dword_ptr dwItemSpec;uint uItemState;lparam lItemlParam" & _
";dword clrText;dword clrTextBk;int iSubItem;dword dwItemType;dword clrFace;int iIconEffect;" & _
"int iIconPhase;int iPartId;int iStateId;long TextLeft;long TextTop;long TextRight;long TextBottom;uint uAlign"
Global Const $tagNMLVDISPINFO = $tagNMHDR & ";" & $tagLVITEM
Global Const $tagNMLVFINDITEM = $tagNMHDR & ";" & $tagLVFINDINFO
Global Const $tagNMLVGETINFOTIP = $tagNMHDR & ";dword Flags;ptr Text;int TextMax;int Item;int SubItem;lparam lParam"
Global Const $tagNMITEMACTIVATE = $tagNMHDR & ";int Index;int SubItem;uint NewState;uint OldState;uint Changed;" & _
$tagPOINT & ";lparam lParam;uint KeyFlags"
Global Const $tagNMLVKEYDOWN = $tagNMHDR & ";align 1;word VKey;uint Flags"
Global Const $tagNMLVSCROLL = $tagNMHDR & ";int DX;int DY"
Global Const $tagMCHITTESTINFO = "uint Size;" & $tagPOINT & ";uint Hit;" & $tagSYSTEMTIME
Global Const $tagMCMONTHRANGE = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;word MinSecond;" & _
"word MinMSeconds;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;word MaxMinute;word MaxSecond;" & _
"word MaxMSeconds;short Span"
Global Const $tagMCRANGE = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;word MinSecond;" & _
"word MinMSeconds;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;word MaxMinute;word MaxSecond;" & _
"word MaxMSeconds;short MinSet;short MaxSet"
Global Const $tagMCSELRANGE = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;word MinSecond;" & _
"word MinMSeconds;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;word MaxMinute;word MaxSecond;" & _
"word MaxMSeconds"
Global Const $tagNMDAYSTATE = $tagNMHDR & ";" & $tagSYSTEMTIME & ";int DayState;ptr pDayState"
Global Const $tagNMSELCHANGE = $tagNMHDR & ";word BegYear;word BegMonth;word BegDOW;word BegDay;" & _
"word BegHour;word BegMinute;word BegSecond;word BegMSeconds;word EndYear;word EndMonth;word EndDOW;" & _
"word EndDay;word EndHour;word EndMinute;word EndSecond;word EndMSeconds"
Global Const $tagNMOBJECTNOTIFY = $tagNMHDR & ";int Item;ptr piid;ptr pObject;long Result"
Global Const $tagNMTCKEYDOWN = $tagNMHDR & ";word VKey;uint Flags"
Global Const $tagTVITEM = "uint Mask;handle hItem;uint State;uint StateMask;ptr Text;int TextMax;int Image;int SelectedImage;" & _
"int Children;lparam Param"
Global Const $tagTVITEMEX = $tagTVITEM & ";int Integral"
Global Const $tagNMTREEVIEW = $tagNMHDR & ";uint Action;uint OldMask;handle OldhItem;uint OldState;uint OldStateMask;" & _
"ptr OldText;int OldTextMax;int OldImage;int OldSelectedImage;int OldChildren;lparam OldParam;uint NewMask;handle NewhItem;" & _
"uint NewState;uint NewStateMask;ptr NewText;int NewTextMax;int NewImage;int NewSelectedImage;int NewChildren;" & _
"lparam NewParam;long PointX;long PointY"
Global Const $tagNMTVCUSTOMDRAW = $tagNMHDR & ";dword DrawStage;handle HDC;long Left;long Top;long Right;long Bottom;" & _
"dword_ptr ItemSpec;uint ItemState;lparam ItemParam;dword ClrText;dword ClrTextBk;int Level"
Global Const $tagNMTVDISPINFO = $tagNMHDR & ";" & $tagTVITEM
Global Const $tagNMTVGETINFOTIP = $tagNMHDR & ";ptr Text;int TextMax;handle hItem;lparam lParam"
Global Const $tagTVHITTESTINFO = $tagPOINT & ";uint Flags;handle Item"
Global Const $tagNMTVKEYDOWN = $tagNMHDR & ";word VKey;uint Flags"
Global Const $tagNMMOUSE = $tagNMHDR & ";dword_ptr ItemSpec;dword_ptr ItemData;" & $tagPOINT & ";lparam HitInfo"
Global Const $tagTOKEN_PRIVILEGES = "dword Count;int64 LUID;dword Attributes"
Global Const $tagIMAGEINFO = "handle hBitmap;handle hMask;int Unused1;int Unused2;" & $tagRECT
Global Const $tagMENUINFO = "dword Size;INT Mask;dword Style;uint YMax;handle hBack;dword ContextHelpID;ulong_ptr MenuData"
Global Const $tagMENUITEMINFO = "uint Size;uint Mask;uint Type;uint State;uint ID;handle SubMenu;handle BmpChecked;handle BmpUnchecked;" & _
"ulong_ptr ItemData;ptr TypeData;uint CCH;handle BmpItem"
Global Const $tagREBARBANDINFO = "uint cbSize;uint fMask;uint fStyle;dword clrFore;dword clrBack;ptr lpText;uint cch;" & _
"int iImage;hwnd hwndChild;uint cxMinChild;uint cyMinChild;uint cx;handle hbmBack;uint wID;uint cyChild;uint cyMaxChild;" & _
"uint cyIntegral;uint cxIdeal;lparam lParam;uint cxHeader"
Global Const $tagNMREBARAUTOBREAK = $tagNMHDR & ";uint uBand;uint wID;lparam lParam;uint uMsg;uint fStyleCurrent;bool fAutoBreak"
Global Const $tagNMRBAUTOSIZE = $tagNMHDR & ";bool fChanged;long TargetLeft;long TargetTop;long TargetRight;long TargetBottom;" & _
"long ActualLeft;long ActualTop;long ActualRight;long ActualBottom"
Global Const $tagNMREBAR = $tagNMHDR & ";dword dwMask;uint uBand;uint fStyle;uint wID;laram lParam"
Global Const $tagNMREBARCHEVRON = $tagNMHDR & ";uint uBand;uint wID;lparam lParam;" & $tagRECT & ";lparam lParamNM"
Global Const $tagNMREBARCHILDSIZE = $tagNMHDR & ";uint uBand;uint wID;long CLeft;long CTop;long CRight;long CBottom;" & _
"long BLeft;long BTop;long BRight;long BBottom"
Global Const $tagCOLORSCHEME = "dword Size;dword BtnHighlight;dword BtnShadow"
Global Const $tagNMTOOLBAR = $tagNMHDR & ";int iItem;" & _
"int iBitmap;int idCommand;byte fsState;byte fsStyle;align;dword_ptr dwData;int_ptr iString" & _
";int cchText;ptr pszText;" & $tagRECT
Global Const $tagNMTBHOTITEM = $tagNMHDR & ";int idOld;int idNew;dword dwFlags"
Global Const $tagTBBUTTON = "int Bitmap;int Command;byte State;byte Style;align;dword_ptr Param;int_ptr String"
Global Const $tagTBBUTTONINFO = "uint Size;dword Mask;int Command;int Image;byte State;byte Style;word CX;dword_ptr Param;ptr Text;int TextMax"
Global Const $tagNETRESOURCE = "dword Scope;dword Type;dword DisplayType;dword Usage;ptr LocalName;ptr RemoteName;ptr Comment;ptr Provider"
Global Const $tagOVERLAPPED = "ulong_ptr Internal;ulong_ptr InternalHigh;dword Offset;dword OffsetHigh;handle hEvent"
Global Const $tagOPENFILENAME = "dword StructSize;hwnd hwndOwner;handle hInstance;ptr lpstrFilter;ptr lpstrCustomFilter;" & _
"dword nMaxCustFilter;dword nFilterIndex;ptr lpstrFile;dword nMaxFile;ptr lpstrFileTitle;dword nMaxFileTitle;" & _
"ptr lpstrInitialDir;ptr lpstrTitle;dword Flags;word nFileOffset;word nFileExtension;ptr lpstrDefExt;lparam lCustData;" & _
"ptr lpfnHook;ptr lpTemplateName;ptr pvReserved;dword dwReserved;dword FlagsEx"
Global Const $tagBITMAPINFO = "dword Size;long Width;long Height;word Planes;word BitCount;dword Compression;dword SizeImage;" & _
"long XPelsPerMeter;long YPelsPerMeter;dword ClrUsed;dword ClrImportant;dword RGBQuad"
Global Const $tagBLENDFUNCTION = "byte Op;byte Flags;byte Alpha;byte Format"
Global Const $tagGUID = "dword Data1;word Data2;word Data3;byte Data4[8]"
Global Const $tagWINDOWPLACEMENT = "uint length; uint flags;uint showCmd;long ptMinPosition[2];long ptMaxPosition[2];long rcNormalPosition[4]"
Global Const $tagWINDOWPOS = "hwnd hWnd;hwnd InsertAfter;int X;int Y;int CX;int CY;uint Flags"
Global Const $tagSCROLLINFO = "uint cbSize;uint fMask;int  nMin;int  nMax;uint nPage;int  nPos;int  nTrackPos"
Global Const $tagSCROLLBARINFO = "dword cbSize;" & $tagRECT & ";int dxyLineButton;int xyThumbTop;" & _
"int xyThumbBottom;int reserved;dword rgstate[6]"
Global Const $tagLOGFONT = "long Height;long Width;long Escapement;long Orientation;long Weight;byte Italic;byte Underline;" & _
"byte Strikeout;byte CharSet;byte OutPrecision;byte ClipPrecision;byte Quality;byte PitchAndFamily;wchar FaceName[32]"
Global Const $tagKBDLLHOOKSTRUCT = "dword vkCode;dword scanCode;dword flags;dword time;ulong_ptr dwExtraInfo"
Global Const $tagPROCESS_INFORMATION = "handle hProcess;handle hThread;dword ProcessID;dword ThreadID"
Global Const $tagSTARTUPINFO = "dword Size;ptr Reserved1;ptr Desktop;ptr Title;dword X;dword Y;dword XSize;dword YSize;dword XCountChars;" & _
"dword YCountChars;dword FillAttribute;dword Flags;word ShowWindow;word Reserved2;ptr Reserved3;handle StdInput;" & _
"handle StdOutput;handle StdError"
Global Const $tagSECURITY_ATTRIBUTES = "dword Length;ptr Descriptor;bool InheritHandle"
Global Const $tagWIN32_FIND_DATA = "dword dwFileAttributes; dword ftCreationTime[2]; dword ftLastAccessTime[2]; dword ftLastWriteTime[2]; dword nFileSizeHigh; dword nFileSizeLow; dword dwReserved0; dword dwReserved1; wchar cFileName[260]; wchar cAlternateFileName[14]"
Global Const $FC_NOOVERWRITE = 0
Global Const $FC_OVERWRITE = 1
Global Const $FT_MODIFIED = 0
Global Const $FT_CREATED = 1
Global Const $FT_ACCESSED = 2
Global Const $FO_READ = 0
Global Const $FO_APPEND = 1
Global Const $FO_OVERWRITE = 2
Global Const $FO_BINARY = 16
Global Const $FO_UNICODE = 32
Global Const $FO_UTF16_LE = 32
Global Const $FO_UTF16_BE = 64
Global Const $FO_UTF8 = 128
Global Const $FO_UTF8_NOBOM = 256
Global Const $EOF = -1
Global Const $FD_FILEMUSTEXIST = 1
Global Const $FD_PATHMUSTEXIST = 2
Global Const $FD_MULTISELECT = 4
Global Const $FD_PROMPTCREATENEW = 8
Global Const $FD_PROMPTOVERWRITE = 16
Global Const $CREATE_NEW = 1
Global Const $CREATE_ALWAYS = 2
Global Const $OPEN_EXISTING = 3
Global Const $OPEN_ALWAYS = 4
Global Const $TRUNCATE_EXISTING = 5
Global Const $INVALID_SET_FILE_POINTER = -1
Global Const $FILE_BEGIN = 0
Global Const $FILE_CURRENT = 1
Global Const $FILE_END = 2
Global Const $FILE_ATTRIBUTE_READONLY = 0x00000001
Global Const $FILE_ATTRIBUTE_HIDDEN = 0x00000002
Global Const $FILE_ATTRIBUTE_SYSTEM = 0x00000004
Global Const $FILE_ATTRIBUTE_DIRECTORY = 0x00000010
Global Const $FILE_ATTRIBUTE_ARCHIVE = 0x00000020
Global Const $FILE_ATTRIBUTE_DEVICE = 0x00000040
Global Const $FILE_ATTRIBUTE_NORMAL = 0x00000080
Global Const $FILE_ATTRIBUTE_TEMPORARY = 0x00000100
Global Const $FILE_ATTRIBUTE_SPARSE_FILE = 0x00000200
Global Const $FILE_ATTRIBUTE_REPARSE_POINT = 0x00000400
Global Const $FILE_ATTRIBUTE_COMPRESSED = 0x00000800
Global Const $FILE_ATTRIBUTE_OFFLINE = 0x00001000
Global Const $FILE_ATTRIBUTE_NOT_CONTENT_INDEXED = 0x00002000
Global Const $FILE_ATTRIBUTE_ENCRYPTED = 0x00004000
Global Const $FILE_SHARE_READ = 0x00000001
Global Const $FILE_SHARE_WRITE = 0x00000002
Global Const $FILE_SHARE_DELETE = 0x00000004
Global Const $GENERIC_ALL = 0x10000000
Global Const $GENERIC_EXECUTE = 0x20000000
Global Const $GENERIC_WRITE = 0x40000000
Global Const $GENERIC_READ = 0x80000000
Global Const $ERROR_NO_TOKEN = 1008
Global Const $SE_ASSIGNPRIMARYTOKEN_NAME = "SeAssignPrimaryTokenPrivilege"
Global Const $SE_AUDIT_NAME = "SeAuditPrivilege"
Global Const $SE_BACKUP_NAME = "SeBackupPrivilege"
Global Const $SE_CHANGE_NOTIFY_NAME = "SeChangeNotifyPrivilege"
Global Const $SE_CREATE_GLOBAL_NAME = "SeCreateGlobalPrivilege"
Global Const $SE_CREATE_PAGEFILE_NAME = "SeCreatePagefilePrivilege"
Global Const $SE_CREATE_PERMANENT_NAME = "SeCreatePermanentPrivilege"
Global Const $SE_CREATE_TOKEN_NAME = "SeCreateTokenPrivilege"
Global Const $SE_DEBUG_NAME = "SeDebugPrivilege"
Global Const $SE_ENABLE_DELEGATION_NAME = "SeEnableDelegationPrivilege"
Global Const $SE_IMPERSONATE_NAME = "SeImpersonatePrivilege"
Global Const $SE_INC_BASE_PRIORITY_NAME = "SeIncreaseBasePriorityPrivilege"
Global Const $SE_INCREASE_QUOTA_NAME = "SeIncreaseQuotaPrivilege"
Global Const $SE_LOAD_DRIVER_NAME = "SeLoadDriverPrivilege"
Global Const $SE_LOCK_MEMORY_NAME = "SeLockMemoryPrivilege"
Global Const $SE_MACHINE_ACCOUNT_NAME = "SeMachineAccountPrivilege"
Global Const $SE_MANAGE_VOLUME_NAME = "SeManageVolumePrivilege"
Global Const $SE_PROF_SINGLE_PROCESS_NAME = "SeProfileSingleProcessPrivilege"
Global Const $SE_REMOTE_SHUTDOWN_NAME = "SeRemoteShutdownPrivilege"
Global Const $SE_RESTORE_NAME = "SeRestorePrivilege"
Global Const $SE_SECURITY_NAME = "SeSecurityPrivilege"
Global Const $SE_SHUTDOWN_NAME = "SeShutdownPrivilege"
Global Const $SE_SYNC_AGENT_NAME = "SeSyncAgentPrivilege"
Global Const $SE_SYSTEM_ENVIRONMENT_NAME = "SeSystemEnvironmentPrivilege"
Global Const $SE_SYSTEM_PROFILE_NAME = "SeSystemProfilePrivilege"
Global Const $SE_SYSTEMTIME_NAME = "SeSystemtimePrivilege"
Global Const $SE_TAKE_OWNERSHIP_NAME = "SeTakeOwnershipPrivilege"
Global Const $SE_TCB_NAME = "SeTcbPrivilege"
Global Const $SE_UNSOLICITED_INPUT_NAME = "SeUnsolicitedInputPrivilege"
Global Const $SE_UNDOCK_NAME = "SeUndockPrivilege"
Global Const $SE_PRIVILEGE_ENABLED_BY_DEFAULT = 0x00000001
Global Const $SE_PRIVILEGE_ENABLED = 0x00000002
Global Const $SE_PRIVILEGE_REMOVED = 0x00000004
Global Const $SE_PRIVILEGE_USED_FOR_ACCESS = 0x80000000
Global Const $TOKENUSER = 1
Global Const $TOKENGROUPS = 2
Global Const $TOKENPRIVILEGES = 3
Global Const $TOKENOWNER = 4
Global Const $TOKENPRIMARYGROUP = 5
Global Const $TOKENDEFAULTDACL = 6
Global Const $TOKENSOURCE = 7
Global Const $TOKENTYPE = 8
Global Const $TOKENIMPERSONATIONLEVEL = 9
Global Const $TOKENSTATISTICS = 10
Global Const $TOKENRESTRICTEDSIDS = 11
Global Const $TOKENSESSIONID = 12
Global Const $TOKENGROUPSANDPRIVILEGES = 13
Global Const $TOKENSESSIONREFERENCE = 14
Global Const $TOKENSANDBOXINERT = 15
Global Const $TOKENAUDITPOLICY = 16
Global Const $TOKENORIGIN = 17
Global Const $TOKENELEVATIONTYPE = 18
Global Const $TOKENLINKEDTOKEN = 19
Global Const $TOKENELEVATION = 20
Global Const $TOKENHASRESTRICTIONS = 21
Global Const $TOKENACCESSINFORMATION = 22
Global Const $TOKENVIRTUALIZATIONALLOWED = 23
Global Const $TOKENVIRTUALIZATIONENABLED = 24
Global Const $TOKENINTEGRITYLEVEL = 25
Global Const $TOKENUIACCESS = 26
Global Const $TOKENMANDATORYPOLICY = 27
Global Const $TOKENLOGONSID = 28
Global Const $TOKEN_ASSIGN_PRIMARY = 0x00000001
Global Const $TOKEN_DUPLICATE = 0x00000002
Global Const $TOKEN_IMPERSONATE = 0x00000004
Global Const $TOKEN_QUERY = 0x00000008
Global Const $TOKEN_QUERY_SOURCE = 0x00000010
Global Const $TOKEN_ADJUST_PRIVILEGES = 0x00000020
Global Const $TOKEN_ADJUST_GROUPS = 0x00000040
Global Const $TOKEN_ADJUST_DEFAULT = 0x00000080
Global Const $TOKEN_ADJUST_SESSIONID = 0x00000100
Func _SendMessage($hWnd, $iMsg, $wParam = 0, $lParam = 0, $iReturn = 0, $wParamType = "wparam", $lParamType = "lparam", $sReturnType = "lresult")
Local $aResult = DllCall("user32.dll", $sReturnType, "SendMessageW", "hwnd", $hWnd, "uint", $iMsg, $wParamType, $wParam, $lParamType, $lParam)
If @error Then Return SetError(@error, @extended, "")
If $iReturn >= 0 And $iReturn <= 4 Then Return $aResult[$iReturn]
Return $aResult
EndFunc
Global $__gaInProcess_WinAPI[64][2] = [[0, 0]]
Global $__gaWinList_WinAPI[64][2] = [[0, 0]]
Global Const $__WINAPICONSTANT_WM_SETFONT = 0x0030
Global Const $__WINAPICONSTANT_FW_NORMAL = 400
Global Const $__WINAPICONSTANT_DEFAULT_CHARSET = 1
Global Const $__WINAPICONSTANT_OUT_DEFAULT_PRECIS = 0
Global Const $__WINAPICONSTANT_CLIP_DEFAULT_PRECIS = 0
Global Const $__WINAPICONSTANT_DEFAULT_QUALITY = 0
Global Const $__WINAPICONSTANT_FORMAT_MESSAGE_ALLOCATE_BUFFER = 0x100
Global Const $__WINAPICONSTANT_FORMAT_MESSAGE_FROM_SYSTEM = 0x1000
Global Const $__WINAPICONSTANT_LOGPIXELSX = 88
Global Const $__WINAPICONSTANT_LOGPIXELSY = 90
Global Const $HGDI_ERROR = Ptr(-1)
Global Const $INVALID_HANDLE_VALUE = Ptr(-1)
Global Const $CLR_INVALID = -1
Global Const $__WINAPICONSTANT_FLASHW_CAPTION = 0x00000001
Global Const $__WINAPICONSTANT_FLASHW_TRAY = 0x00000002
Global Const $__WINAPICONSTANT_FLASHW_TIMER = 0x00000004
Global Const $__WINAPICONSTANT_FLASHW_TIMERNOFG = 0x0000000C
Global Const $__WINAPICONSTANT_GW_HWNDNEXT = 2
Global Const $__WINAPICONSTANT_GW_CHILD = 5
Global Const $__WINAPICONSTANT_DI_MASK = 0x0001
Global Const $__WINAPICONSTANT_DI_IMAGE = 0x0002
Global Const $__WINAPICONSTANT_DI_NORMAL = 0x0003
Global Const $__WINAPICONSTANT_DI_COMPAT = 0x0004
Global Const $__WINAPICONSTANT_DI_DEFAULTSIZE = 0x0008
Global Const $__WINAPICONSTANT_DI_NOMIRROR = 0x0010
Global Const $__WINAPICONSTANT_DISPLAY_DEVICE_ATTACHED_TO_DESKTOP = 0x00000001
Global Const $__WINAPICONSTANT_DISPLAY_DEVICE_PRIMARY_DEVICE = 0x00000004
Global Const $__WINAPICONSTANT_DISPLAY_DEVICE_MIRRORING_DRIVER = 0x00000008
Global Const $__WINAPICONSTANT_DISPLAY_DEVICE_VGA_COMPATIBLE = 0x00000010
Global Const $__WINAPICONSTANT_DISPLAY_DEVICE_REMOVABLE = 0x00000020
Global Const $__WINAPICONSTANT_DISPLAY_DEVICE_MODESPRUNED = 0x08000000
Global Const $NULL_BRUSH = 5
Global Const $NULL_PEN = 8
Global Const $BLACK_BRUSH = 4
Global Const $DKGRAY_BRUSH = 3
Global Const $DC_BRUSH = 18
Global Const $GRAY_BRUSH = 2
Global Const $HOLLOW_BRUSH = $NULL_BRUSH
Global Const $LTGRAY_BRUSH = 1
Global Const $WHITE_BRUSH = 0
Global Const $BLACK_PEN = 7
Global Const $DC_PEN = 19
Global Const $WHITE_PEN = 6
Global Const $ANSI_FIXED_FONT = 11
Global Const $ANSI_VAR_FONT = 12
Global Const $DEVICE_DEFAULT_FONT = 14
Global Const $DEFAULT_GUI_FONT = 17
Global Const $OEM_FIXED_FONT = 10
Global Const $SYSTEM_FONT = 13
Global Const $SYSTEM_FIXED_FONT = 16
Global Const $DEFAULT_PALETTE = 15
Global Const $MB_PRECOMPOSED = 0x01
Global Const $MB_COMPOSITE = 0x02
Global Const $MB_USEGLYPHCHARS = 0x04
Global Const $ULW_ALPHA = 0x02
Global Const $ULW_COLORKEY = 0x01
Global Const $ULW_OPAQUE = 0x04
Global Const $WH_CALLWNDPROC = 4
Global Const $WH_CALLWNDPROCRET = 12
Global Const $WH_CBT = 5
Global Const $WH_DEBUG = 9
Global Const $WH_FOREGROUNDIDLE = 11
Global Const $WH_GETMESSAGE = 3
Global Const $WH_JOURNALPLAYBACK = 1
Global Const $WH_JOURNALRECORD = 0
Global Const $WH_KEYBOARD = 2
Global Const $WH_KEYBOARD_LL = 13
Global Const $WH_MOUSE = 7
Global Const $WH_MOUSE_LL = 14
Global Const $WH_MSGFILTER = -1
Global Const $WH_SHELL = 10
Global Const $WH_SYSMSGFILTER = 6
Global Const $WPF_ASYNCWINDOWPLACEMENT = 0x04
Global Const $WPF_RESTORETOMAXIMIZED = 0x02
Global Const $WPF_SETMINPOSITION = 0x01
Global Const $KF_EXTENDED = 0x0100
Global Const $KF_ALTDOWN = 0x2000
Global Const $KF_UP = 0x8000
Global Const $LLKHF_EXTENDED = BitShift($KF_EXTENDED, 8)
Global Const $LLKHF_INJECTED = 0x10
Global Const $LLKHF_ALTDOWN = BitShift($KF_ALTDOWN, 8)
Global Const $LLKHF_UP = BitShift($KF_UP, 8)
Global Const $OFN_ALLOWMULTISELECT = 0x00000200
Global Const $OFN_CREATEPROMPT = 0x00002000
Global Const $OFN_DONTADDTORECENT = 0x02000000
Global Const $OFN_ENABLEHOOK = 0x00000020
Global Const $OFN_ENABLEINCLUDENOTIFY = 0x00400000
Global Const $OFN_ENABLESIZING = 0x00800000
Global Const $OFN_ENABLETEMPLATE = 0x00000040
Global Const $OFN_ENABLETEMPLATEHANDLE = 0x00000080
Global Const $OFN_EXPLORER = 0x00080000
Global Const $OFN_EXTENSIONDIFFERENT = 0x00000400
Global Const $OFN_FILEMUSTEXIST = 0x00001000
Global Const $OFN_FORCESHOWHIDDEN = 0x10000000
Global Const $OFN_HIDEREADONLY = 0x00000004
Global Const $OFN_LONGNAMES = 0x00200000
Global Const $OFN_NOCHANGEDIR = 0x00000008
Global Const $OFN_NODEREFERENCELINKS = 0x00100000
Global Const $OFN_NOLONGNAMES = 0x00040000
Global Const $OFN_NONETWORKBUTTON = 0x00020000
Global Const $OFN_NOREADONLYRETURN = 0x00008000
Global Const $OFN_NOTESTFILECREATE = 0x00010000
Global Const $OFN_NOVALIDATE = 0x00000100
Global Const $OFN_OVERWRITEPROMPT = 0x00000002
Global Const $OFN_PATHMUSTEXIST = 0x00000800
Global Const $OFN_READONLY = 0x00000001
Global Const $OFN_SHAREAWARE = 0x00004000
Global Const $OFN_SHOWHELP = 0x00000010
Global Const $OFN_EX_NOPLACESBAR = 0x00000001
Global Const $tagCURSORINFO = "dword Size;dword Flags;handle hCursor;" & $tagPOINT
Global Const $tagDISPLAY_DEVICE = "dword Size;wchar Name[32];wchar String[128];dword Flags;wchar ID[128];wchar Key[128]"
Global Const $tagFLASHWINFO = "uint Size;hwnd hWnd;dword Flags;uint Count;dword TimeOut"
Global Const $tagICONINFO = "bool Icon;dword XHotSpot;dword YHotSpot;handle hMask;handle hColor"
Global Const $tagMEMORYSTATUSEX = "dword Length;dword MemoryLoad;" & _
"uint64 TotalPhys;uint64 AvailPhys;uint64 TotalPageFile;uint64 AvailPageFile;" & _
"uint64 TotalVirtual;uint64 AvailVirtual;uint64 AvailExtendedVirtual"
Func _WinAPI_GetClassName($hWnd)
If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)
Local $aResult = DllCall("user32.dll", "int", "GetClassNameW", "hwnd", $hWnd, "wstr", "", "int", 4096)
If @error Then Return SetError(@error, @extended, False)
Return SetExtended($aResult[0], $aResult[2])
EndFunc
Func _WinAPI_IsClassName($hWnd, $sClassName)
Local $sSeparator = Opt("GUIDataSeparatorChar")
Local $aClassName = StringSplit($sClassName, $sSeparator)
If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)
Local $sClassCheck = _WinAPI_GetClassName($hWnd)
For $x = 1 To UBound($aClassName) - 1
If StringUpper(StringMid($sClassCheck, 1, StringLen($aClassName[$x]))) = StringUpper($aClassName[$x]) Then Return True
Next
Return False
EndFunc
Global Const $COLOR_AQUA = 0x00FFFF
Global Const $COLOR_BLACK = 0x000000
Global Const $COLOR_BLUE = 0x0000FF
Global Const $COLOR_CREAM = 0xFFFBF0
Global Const $COLOR_FUCHSIA = 0xFF00FF
Global Const $COLOR_GRAY = 0x808080
Global Const $COLOR_GREEN = 0x008000
Global Const $COLOR_LIME = 0x00FF00
Global Const $COLOR_MAROON = 0x8B1C62
Global Const $COLOR_MEDBLUE = 0x0002C4
Global Const $COLOR_MEDGRAY = 0xA0A0A4
Global Const $COLOR_MONEYGREEN = 0xC0DCC0
Global Const $COLOR_NAVY = 0x000080
Global Const $COLOR_OLIVE = 0x808000
Global Const $COLOR_PURPLE = 0x800080
Global Const $COLOR_RED = 0xFF0000
Global Const $COLOR_SILVER = 0xC0C0C0
Global Const $COLOR_SKYBLUE = 0xA6CAF0
Global Const $COLOR_TEAL = 0x008080
Global Const $COLOR_WHITE = 0xFFFFFF
Global Const $COLOR_YELLOW = 0xFFFF00
Global Const $CLR_NONE = 0xFFFFFFFF
Global Const $CLR_DEFAULT = 0xFF000000
Global Const $CLR_AQUA = 0xFFFF00
Global Const $CLR_BLACK = 0x000000
Global Const $CLR_BLUE = 0xFF0000
Global Const $CLR_CREAM = 0xF0FBFF
Global Const $CLR_FUCHSIA = 0xFF00FF
Global Const $CLR_GRAY = 0x808080
Global Const $CLR_GREEN = 0x008000
Global Const $CLR_LIME = 0x00FF00
Global Const $CLR_MAROON = 0x621C8B
Global Const $CLR_MEDBLUE = 0xC40200
Global Const $CLR_MEDGRAY = 0xA4A0A0
Global Const $CLR_MONEYGREEN = 0xC0DCC0
Global Const $CLR_NAVY = 0x800000
Global Const $CLR_OLIVE = 0x008080
Global Const $CLR_PURPLE = 0x800080
Global Const $CLR_RED = 0x0000FF
Global Const $CLR_SILVER = 0xC0C0C0
Global Const $CLR_SKYBLUE = 0xF0CAA6
Global Const $CLR_TEAL = 0x808000
Global Const $CLR_WHITE = 0xFFFFFF
Global Const $CLR_YELLOW = 0x00FFFF
Global Const $CC_ANYCOLOR = 0x0100
Global Const $CC_FULLOPEN = 0x0002
Global Const $CC_RGBINIT = 0x0001
Global Const $__IMAGELISTCONSTANT_IMAGE_BITMAP = 0
Global Const $__IMAGELISTCONSTANT_LR_LOADFROMFILE = 0x0010
Global Const $GMEM_FIXED = 0x0000
Global Const $GMEM_MOVEABLE = 0x0002
Global Const $GMEM_NOCOMPACT = 0x0010
Global Const $GMEM_NODISCARD = 0x0020
Global Const $GMEM_ZEROINIT = 0x0040
Global Const $GMEM_MODIFY = 0x0080
Global Const $GMEM_DISCARDABLE = 0x0100
Global Const $GMEM_NOT_BANKED = 0x1000
Global Const $GMEM_SHARE = 0x2000
Global Const $GMEM_DDESHARE = 0x2000
Global Const $GMEM_NOTIFY = 0x4000
Global Const $GMEM_LOWER = 0x1000
Global Const $GMEM_VALID_FLAGS = 0x7F72
Global Const $GMEM_INVALID_HANDLE = 0x8000
Global Const $GPTR = $GMEM_FIXED + $GMEM_ZEROINIT
Global Const $GHND = $GMEM_MOVEABLE + $GMEM_ZEROINIT
Global Const $MEM_COMMIT = 0x00001000
Global Const $MEM_RESERVE = 0x00002000
Global Const $MEM_TOP_DOWN = 0x00100000
Global Const $MEM_SHARED = 0x08000000
Global Const $PAGE_NOACCESS = 0x00000001
Global Const $PAGE_READONLY = 0x00000002
Global Const $PAGE_READWRITE = 0x00000004
Global Const $PAGE_EXECUTE = 0x00000010
Global Const $PAGE_EXECUTE_READ = 0x00000020
Global Const $PAGE_EXECUTE_READWRITE = 0x00000040
Global Const $PAGE_GUARD = 0x00000100
Global Const $PAGE_NOCACHE = 0x00000200
Global Const $MEM_DECOMMIT = 0x00004000
Global Const $MEM_RELEASE = 0x00008000
Global Const $PROCESS_TERMINATE = 0x00000001
Global Const $PROCESS_CREATE_THREAD = 0x00000002
Global Const $PROCESS_SET_SESSIONID = 0x00000004
Global Const $PROCESS_VM_OPERATION = 0x00000008
Global Const $PROCESS_VM_READ = 0x00000010
Global Const $PROCESS_VM_WRITE = 0x00000020
Global Const $PROCESS_DUP_HANDLE = 0x00000040
Global Const $PROCESS_CREATE_PROCESS = 0x00000080
Global Const $PROCESS_SET_QUOTA = 0x00000100
Global Const $PROCESS_SET_INFORMATION = 0x00000200
Global Const $PROCESS_QUERY_INFORMATION = 0x00000400
Global Const $PROCESS_SUSPEND_RESUME = 0x00000800
Global Const $PROCESS_ALL_ACCESS = 0x001F0FFF
Global Const $tagMEMMAP = "handle hProc;ulong_ptr Size;ptr Mem"
Global Const $_UDF_GlobalIDs_OFFSET = 2
Global Const $_UDF_GlobalID_MAX_WIN = 16
Global Const $_UDF_STARTID = 10000
Global Const $_UDF_GlobalID_MAX_IDS = 55535
Global Const $__UDFGUICONSTANT_WS_VISIBLE = 0x10000000
Global Const $__UDFGUICONSTANT_WS_CHILD = 0x40000000
Global $_UDF_GlobalIDs_Used[$_UDF_GlobalID_MAX_WIN][$_UDF_GlobalID_MAX_IDS + $_UDF_GlobalIDs_OFFSET + 1]
Func __UDF_DebugPrint($sText, $iLine = @ScriptLineNumber, $err=@error, $ext=@extended)
ConsoleWrite( _
"!===========================================================" & @CRLF & _
"+======================================================" & @CRLF & _
"-->Line(" & StringFormat("%04d", $iLine) & "):" & @TAB & $sText & @CRLF & _
"+======================================================" & @CRLF)
Return SetError($err, $ext, 1)
EndFunc
Func __UDF_ValidateClassName($hWnd, $sClassNames)
__UDF_DebugPrint("This is for debugging only, set the debug variable to false before submitting")
If _WinAPI_IsClassName($hWnd, $sClassNames) Then Return True
Local $sSeparator = Opt("GUIDataSeparatorChar")
$sClassNames = StringReplace($sClassNames, $sSeparator, ",")
__UDF_DebugPrint("Invalid Class Type(s):" & @LF & @TAB & "Expecting Type(s): " & $sClassNames & @LF & @TAB & "Received Type : " & _WinAPI_GetClassName($hWnd))
Exit
EndFunc
Global $__ghTVLastWnd
Global $Debug_TV = False
Global Const $__TREEVIEWCONSTANT_ClassName = "SysTreeView32"
Global Const $__TREEVIEWCONSTANT_WM_SETREDRAW = 0x000B
Global Const $__TREEVIEWCONSTANT_DEFAULT_GUI_FONT = 17
Global Const $tagTVINSERTSTRUCT = "handle Parent;handle InsertAfter;" & $tagTVITEM
Func _GUICtrlTreeView_GetCount($hWnd)
If $Debug_TV Then __UDF_ValidateClassName($hWnd, $__TREEVIEWCONSTANT_ClassName)
If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)
Return _SendMessage($hWnd, $TVM_GETCOUNT)
EndFunc
Func _GUICtrlTreeView_Sort($hWnd)
If $Debug_TV Then __UDF_ValidateClassName($hWnd, $__TREEVIEWCONSTANT_ClassName)
If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)
Local $hItem, $a_tree
For $i = 0 To _GUICtrlTreeView_GetCount($hWnd)
If $i == 0 Then
$hItem = _SendMessage($hWnd, $TVM_GETNEXTITEM, $TVGN_CHILD, $TVI_ROOT, 0, "wparam", "handle", "handle")
Else
$hItem = _SendMessage($hWnd, $TVM_GETNEXTITEM, $TVGN_NEXT, $hItem, 0, "wparam", "handle", "handle")
EndIf
If IsArray($a_tree) Then
ReDim $a_tree[UBound($a_tree) + 1]
Else
Dim $a_tree[1]
EndIf
$a_tree[UBound($a_tree) - 1] = $hItem
Next
If IsArray($a_tree) Then
Local $hChild, $i_Recursive = 1
For $i = 0 To UBound($a_tree) - 1
_SendMessage($hWnd, $TVM_SORTCHILDREN, $i_Recursive, $a_tree[$i], 0, "wparam", "handle")
Do
$hChild = _SendMessage($hWnd, $TVM_GETNEXTITEM, $TVGN_CHILD, $hItem, 0, "wparam", "handle", "handle")
If $hChild > 0 Then
_SendMessage($hWnd, $TVM_SORTCHILDREN, $i_Recursive, $hChild, 0, "wparam", "handle")
EndIf
$hItem = $hChild
Until $hItem = 0x00000000
Next
EndIf
EndFunc
Global Const $BS_GROUPBOX = 0x0007
Global Const $BS_BOTTOM = 0x0800
Global Const $BS_CENTER = 0x0300
Global Const $BS_DEFPUSHBUTTON = 0x0001
Global Const $BS_LEFT = 0x0100
Global Const $BS_MULTILINE = 0x2000
Global Const $BS_PUSHBOX = 0x000A
Global Const $BS_PUSHLIKE = 0x1000
Global Const $BS_RIGHT = 0x0200
Global Const $BS_RIGHTBUTTON = 0x0020
Global Const $BS_TOP = 0x0400
Global Const $BS_VCENTER = 0x0C00
Global Const $BS_FLAT = 0x8000
Global Const $BS_ICON = 0x0040
Global Const $BS_BITMAP = 0x0080
Global Const $BS_NOTIFY = 0x4000
Global Const $BS_SPLITBUTTON = 0x0000000C
Global Const $BS_DEFSPLITBUTTON = 0x0000000D
Global Const $BS_COMMANDLINK = 0x0000000E
Global Const $BS_DEFCOMMANDLINK = 0x0000000F
Global Const $BCSIF_GLYPH = 0x0001
Global Const $BCSIF_IMAGE = 0x0002
Global Const $BCSIF_STYLE = 0x0004
Global Const $BCSIF_SIZE = 0x0008
Global Const $BCSS_NOSPLIT = 0x0001
Global Const $BCSS_STRETCH = 0x0002
Global Const $BCSS_ALIGNLEFT = 0x0004
Global Const $BCSS_IMAGE = 0x0008
Global Const $BUTTON_IMAGELIST_ALIGN_LEFT = 0
Global Const $BUTTON_IMAGELIST_ALIGN_RIGHT = 1
Global Const $BUTTON_IMAGELIST_ALIGN_TOP = 2
Global Const $BUTTON_IMAGELIST_ALIGN_BOTTOM = 3
Global Const $BUTTON_IMAGELIST_ALIGN_CENTER = 4
Global Const $BS_3STATE = 0x0005
Global Const $BS_AUTO3STATE = 0x0006
Global Const $BS_AUTOCHECKBOX = 0x0003
Global Const $BS_CHECKBOX = 0x0002
Global Const $BS_RADIOBUTTON = 0x4
Global Const $BS_AUTORADIOBUTTON = 0x0009
Global Const $BS_OWNERDRAW = 0xB
Global Const $GUI_SS_DEFAULT_BUTTON = 0
Global Const $GUI_SS_DEFAULT_CHECKBOX = 0
Global Const $GUI_SS_DEFAULT_GROUP = 0
Global Const $GUI_SS_DEFAULT_RADIO = 0
Global Const $BCM_FIRST = 0x1600
Global Const $BCM_GETIDEALSIZE =($BCM_FIRST + 0x0001)
Global Const $BCM_GETIMAGELIST =($BCM_FIRST + 0x0003)
Global Const $BCM_GETNOTE =($BCM_FIRST + 0x000A)
Global Const $BCM_GETNOTELENGTH =($BCM_FIRST + 0x000B)
Global Const $BCM_GETSPLITINFO =($BCM_FIRST + 0x0008)
Global Const $BCM_GETTEXTMARGIN =($BCM_FIRST + 0x0005)
Global Const $BCM_SETDROPDOWNSTATE =($BCM_FIRST + 0x0006)
Global Const $BCM_SETIMAGELIST =($BCM_FIRST + 0x0002)
Global Const $BCM_SETNOTE =($BCM_FIRST + 0x0009)
Global Const $BCM_SETSHIELD =($BCM_FIRST + 0x000C)
Global Const $BCM_SETSPLITINFO =($BCM_FIRST + 0x0007)
Global Const $BCM_SETTEXTMARGIN =($BCM_FIRST + 0x0004)
Global Const $BM_CLICK = 0xF5
Global Const $BM_GETCHECK = 0xF0
Global Const $BM_GETIMAGE = 0xF6
Global Const $BM_GETSTATE = 0xF2
Global Const $BM_SETCHECK = 0xF1
Global Const $BM_SETDONTCLICK = 0xF8
Global Const $BM_SETIMAGE = 0xF7
Global Const $BM_SETSTATE = 0xF3
Global Const $BM_SETSTYLE = 0xF4
Global Const $BCN_FIRST = -1250
Global Const $BCN_DROPDOWN =($BCN_FIRST + 0x0002)
Global Const $BCN_HOTITEMCHANGE =($BCN_FIRST + 0x0001)
Global Const $BN_CLICKED = 0
Global Const $BN_PAINT = 1
Global Const $BN_HILITE = 2
Global Const $BN_UNHILITE = 3
Global Const $BN_DISABLE = 4
Global Const $BN_DOUBLECLICKED = 5
Global Const $BN_SETFOCUS = 6
Global Const $BN_KILLFOCUS = 7
Global Const $BN_PUSHED = $BN_HILITE
Global Const $BN_UNPUSHED = $BN_UNHILITE
Global Const $BN_DBLCLK = $BN_DOUBLECLICKED
Global Const $BST_CHECKED = 0x1
Global Const $BST_INDETERMINATE = 0x2
Global Const $BST_UNCHECKED = 0x0
Global Const $BST_FOCUS = 0x8
Global Const $BST_PUSHED = 0x4
Global Const $BST_DONTCLICK = 0x000080
Global Const $CB_ERR = -1
Global Const $CB_ERRATTRIBUTE = -3
Global Const $CB_ERRREQUIRED = -4
Global Const $CB_ERRSPACE = -2
Global Const $CB_OKAY = 0
Global Const $STATE_SYSTEM_INVISIBLE = 0x8000
Global Const $STATE_SYSTEM_PRESSED = 0x8
Global Const $CBS_AUTOHSCROLL = 0x40
Global Const $CBS_DISABLENOSCROLL = 0x800
Global Const $CBS_DROPDOWN = 0x2
Global Const $CBS_DROPDOWNLIST = 0x3
Global Const $CBS_HASSTRINGS = 0x200
Global Const $CBS_LOWERCASE = 0x4000
Global Const $CBS_NOINTEGRALHEIGHT = 0x400
Global Const $CBS_OEMCONVERT = 0x80
Global Const $CBS_OWNERDRAWFIXED = 0x10
Global Const $CBS_OWNERDRAWVARIABLE = 0x20
Global Const $CBS_SIMPLE = 0x1
Global Const $CBS_SORT = 0x100
Global Const $CBS_UPPERCASE = 0x2000
Global Const $CBM_FIRST = 0x1700
Global Const $CB_ADDSTRING = 0x143
Global Const $CB_DELETESTRING = 0x144
Global Const $CB_DIR = 0x145
Global Const $CB_FINDSTRING = 0x14C
Global Const $CB_FINDSTRINGEXACT = 0x158
Global Const $CB_GETCOMBOBOXINFO = 0x164
Global Const $CB_GETCOUNT = 0x146
Global Const $CB_GETCUEBANNER =($CBM_FIRST + 4)
Global Const $CB_GETCURSEL = 0x147
Global Const $CB_GETDROPPEDCONTROLRECT = 0x152
Global Const $CB_GETDROPPEDSTATE = 0x157
Global Const $CB_GETDROPPEDWIDTH = 0X15f
Global Const $CB_GETEDITSEL = 0x140
Global Const $CB_GETEXTENDEDUI = 0x156
Global Const $CB_GETHORIZONTALEXTENT = 0x15d
Global Const $CB_GETITEMDATA = 0x150
Global Const $CB_GETITEMHEIGHT = 0x154
Global Const $CB_GETLBTEXT = 0x148
Global Const $CB_GETLBTEXTLEN = 0x149
Global Const $CB_GETLOCALE = 0x15A
Global Const $CB_GETMINVISIBLE = 0x1702
Global Const $CB_GETTOPINDEX = 0x15b
Global Const $CB_INITSTORAGE = 0x161
Global Const $CB_LIMITTEXT = 0x141
Global Const $CB_RESETCONTENT = 0x14B
Global Const $CB_INSERTSTRING = 0x14A
Global Const $CB_SELECTSTRING = 0x14D
Global Const $CB_SETCUEBANNER =($CBM_FIRST + 3)
Global Const $CB_SETCURSEL = 0x14E
Global Const $CB_SETDROPPEDWIDTH = 0x160
Global Const $CB_SETEDITSEL = 0x142
Global Const $CB_SETEXTENDEDUI = 0x155
Global Const $CB_SETHORIZONTALEXTENT = 0x15e
Global Const $CB_SETITEMDATA = 0x151
Global Const $CB_SETITEMHEIGHT = 0x153
Global Const $CB_SETLOCALE = 0x159
Global Const $CB_SETMINVISIBLE = 0x1701
Global Const $CB_SETTOPINDEX = 0x15c
Global Const $CB_SHOWDROPDOWN = 0x14F
Global Const $CBN_CLOSEUP = 8
Global Const $CBN_DBLCLK = 2
Global Const $CBN_DROPDOWN = 7
Global Const $CBN_EDITCHANGE = 5
Global Const $CBN_EDITUPDATE = 6
Global Const $CBN_ERRSPACE =(-1)
Global Const $CBN_KILLFOCUS = 4
Global Const $CBN_SELCHANGE = 1
Global Const $CBN_SELENDCANCEL = 10
Global Const $CBN_SELENDOK = 9
Global Const $CBN_SETFOCUS = 3
Global Const $CBES_EX_CASESENSITIVE = 0x10
Global Const $CBES_EX_NOEDITIMAGE = 0x1
Global Const $CBES_EX_NOEDITIMAGEINDENT = 0x2
Global Const $CBES_EX_NOSIZELIMIT = 0x8
Global Const $CBES_EX_PATHWORDBREAKPROC = 0x4
Global Const $__COMBOBOXCONSTANT_WM_USER = 0X400
Global Const $CBEM_DELETEITEM = $CB_DELETESTRING
Global Const $CBEM_GETCOMBOCONTROL =($__COMBOBOXCONSTANT_WM_USER + 6)
Global Const $CBEM_GETEDITCONTROL =($__COMBOBOXCONSTANT_WM_USER + 7)
Global Const $CBEM_GETEXSTYLE =($__COMBOBOXCONSTANT_WM_USER + 9)
Global Const $CBEM_GETEXTENDEDSTYLE =($__COMBOBOXCONSTANT_WM_USER + 9)
Global Const $CBEM_GETIMAGELIST =($__COMBOBOXCONSTANT_WM_USER + 3)
Global Const $CBEM_GETITEMA =($__COMBOBOXCONSTANT_WM_USER + 4)
Global Const $CBEM_GETITEMW =($__COMBOBOXCONSTANT_WM_USER + 13)
Global Const $CBEM_GETUNICODEFORMAT = 0x2000 + 6
Global Const $CBEM_HASEDITCHANGED =($__COMBOBOXCONSTANT_WM_USER + 10)
Global Const $CBEM_INSERTITEMA =($__COMBOBOXCONSTANT_WM_USER + 1)
Global Const $CBEM_INSERTITEMW =($__COMBOBOXCONSTANT_WM_USER + 11)
Global Const $CBEM_SETEXSTYLE =($__COMBOBOXCONSTANT_WM_USER + 8)
Global Const $CBEM_SETEXTENDEDSTYLE =($__COMBOBOXCONSTANT_WM_USER + 14)
Global Const $CBEM_SETIMAGELIST =($__COMBOBOXCONSTANT_WM_USER + 2)
Global Const $CBEM_SETITEMA =($__COMBOBOXCONSTANT_WM_USER + 5)
Global Const $CBEM_SETITEMW =($__COMBOBOXCONSTANT_WM_USER + 12)
Global Const $CBEM_SETUNICODEFORMAT = 0x2000 + 5
Global Const $CBEM_SETWINDOWTHEME = 0x2000 + 11
Global Const $CBEN_FIRST =(-800)
Global Const $CBEN_LAST =(-830)
Global Const $CBEN_BEGINEDIT =($CBEN_FIRST - 4)
Global Const $CBEN_DELETEITEM =($CBEN_FIRST - 2)
Global Const $CBEN_DRAGBEGINA =($CBEN_FIRST - 8)
Global Const $CBEN_DRAGBEGINW =($CBEN_FIRST - 9)
Global Const $CBEN_ENDEDITA =($CBEN_FIRST - 5)
Global Const $CBEN_ENDEDITW =($CBEN_FIRST - 6)
Global Const $CBEN_GETDISPINFO =($CBEN_FIRST - 0)
Global Const $CBEN_GETDISPINFOA =($CBEN_FIRST - 0)
Global Const $CBEN_GETDISPINFOW =($CBEN_FIRST - 7)
Global Const $CBEN_INSERTITEM =($CBEN_FIRST - 1)
Global Const $CBEIF_DI_SETITEM = 0x10000000
Global Const $CBEIF_IMAGE = 0x2
Global Const $CBEIF_INDENT = 0x10
Global Const $CBEIF_LPARAM = 0x20
Global Const $CBEIF_OVERLAY = 0x8
Global Const $CBEIF_SELECTEDIMAGE = 0x4
Global Const $CBEIF_TEXT = 0x1
Global Const $__COMBOBOXCONSTANT_WS_VSCROLL = 0x00200000
Global Const $GUI_SS_DEFAULT_COMBO = BitOR($CBS_DROPDOWN, $CBS_AUTOHSCROLL, $__COMBOBOXCONSTANT_WS_VSCROLL)
Global Const $ES_LEFT = 0
Global Const $ES_CENTER = 1
Global Const $ES_RIGHT = 2
Global Const $ES_MULTILINE = 4
Global Const $ES_UPPERCASE = 8
Global Const $ES_LOWERCASE = 16
Global Const $ES_PASSWORD = 32
Global Const $ES_AUTOVSCROLL = 64
Global Const $ES_AUTOHSCROLL = 128
Global Const $ES_NOHIDESEL = 256
Global Const $ES_OEMCONVERT = 1024
Global Const $ES_READONLY = 2048
Global Const $ES_WANTRETURN = 4096
Global Const $ES_NUMBER = 8192
Global Const $EC_ERR = -1
Global Const $ECM_FIRST = 0X1500
Global Const $EM_CANUNDO = 0xC6
Global Const $EM_CHARFROMPOS = 0xD7
Global Const $EM_EMPTYUNDOBUFFER = 0xCD
Global Const $EM_FMTLINES = 0xC8
Global Const $EM_GETCUEBANNER =($ECM_FIRST + 2)
Global Const $EM_GETFIRSTVISIBLELINE = 0xCE
Global Const $EM_GETHANDLE = 0xBD
Global Const $EM_GETIMESTATUS = 0xD9
Global Const $EM_GETLIMITTEXT = 0xD5
Global Const $EM_GETLINE = 0xC4
Global Const $EM_GETLINECOUNT = 0xBA
Global Const $EM_GETMARGINS = 0xD4
Global Const $EM_GETMODIFY = 0xB8
Global Const $EM_GETPASSWORDCHAR = 0xD2
Global Const $EM_GETRECT = 0xB2
Global Const $EM_GETSEL = 0xB0
Global Const $EM_GETTHUMB = 0xBE
Global Const $EM_GETWORDBREAKPROC = 0xD1
Global Const $EM_HIDEBALLOONTIP =($ECM_FIRST + 4)
Global Const $EM_LIMITTEXT = 0xC5
Global Const $EM_LINEFROMCHAR = 0xC9
Global Const $EM_LINEINDEX = 0xBB
Global Const $EM_LINELENGTH = 0xC1
Global Const $EM_LINESCROLL = 0xB6
Global Const $EM_POSFROMCHAR = 0xD6
Global Const $EM_REPLACESEL = 0xC2
Global Const $EM_SCROLL = 0xB5
Global Const $EM_SCROLLCARET = 0x00B7
Global Const $EM_SETCUEBANNER =($ECM_FIRST + 1)
Global Const $EM_SETHANDLE = 0xBC
Global Const $EM_SETIMESTATUS = 0xD8
Global Const $EM_SETLIMITTEXT = $EM_LIMITTEXT
Global Const $EM_SETMARGINS = 0xD3
Global Const $EM_SETMODIFY = 0xB9
Global Const $EM_SETPASSWORDCHAR = 0xCC
Global Const $EM_SETREADONLY = 0xCF
Global Const $EM_SETRECT = 0xB3
Global Const $EM_SETRECTNP = 0xB4
Global Const $EM_SETSEL = 0xB1
Global Const $EM_SETTABSTOPS = 0xCB
Global Const $EM_SETWORDBREAKPROC = 0xD0
Global Const $EM_SHOWBALLOONTIP =($ECM_FIRST + 3)
Global Const $EM_UNDO = 0xC7
Global Const $EC_LEFTMARGIN = 0x1
Global Const $EC_RIGHTMARGIN = 0x2
Global Const $EC_USEFONTINFO = 0xFFFF
Global Const $EMSIS_COMPOSITIONSTRING = 0x1
Global Const $EIMES_GETCOMPSTRATONCE = 0x1
Global Const $EIMES_CANCELCOMPSTRINFOCUS = 0x2
Global Const $EIMES_COMPLETECOMPSTRKILLFOCUS = 0x4
Global Const $EN_ALIGN_LTR_EC = 0x700
Global Const $EN_ALIGN_RTL_EC = 0x701
Global Const $EN_CHANGE = 0x300
Global Const $EN_ERRSPACE = 0x500
Global Const $EN_HSCROLL = 0X601
Global Const $EN_KILLFOCUS = 0x200
Global Const $EN_MAXTEXT = 0x501
Global Const $EN_SETFOCUS = 0x100
Global Const $EN_UPDATE = 0x400
Global Const $EN_VSCROLL = 0x602
Global Const $TTI_NONE = 0
Global Const $TTI_INFO = 1
Global Const $TTI_WARNING = 2
Global Const $TTI_ERROR = 3
Global Const $TTI_INFO_LARGE = 4
Global Const $TTI_WARNING_LARGE = 5
Global Const $TTI_ERROR_LARGE = 6
Global Const $__EDITCONSTANT_WS_VSCROLL = 0x00200000
Global Const $__EDITCONSTANT_WS_HSCROLL = 0x00100000
Global Const $GUI_SS_DEFAULT_EDIT = BitOR($ES_WANTRETURN, $__EDITCONSTANT_WS_VSCROLL, $__EDITCONSTANT_WS_HSCROLL, $ES_AUTOVSCROLL, $ES_AUTOHSCROLL)
Global Const $GUI_SS_DEFAULT_INPUT = BitOR($ES_LEFT, $ES_AUTOHSCROLL)
Global Const $GUI_EVENT_CLOSE = -3
Global Const $GUI_EVENT_MINIMIZE = -4
Global Const $GUI_EVENT_RESTORE = -5
Global Const $GUI_EVENT_MAXIMIZE = -6
Global Const $GUI_EVENT_PRIMARYDOWN = -7
Global Const $GUI_EVENT_PRIMARYUP = -8
Global Const $GUI_EVENT_SECONDARYDOWN = -9
Global Const $GUI_EVENT_SECONDARYUP = -10
Global Const $GUI_EVENT_MOUSEMOVE = -11
Global Const $GUI_EVENT_RESIZED = -12
Global Const $GUI_EVENT_DROPPED = -13
Global Const $GUI_RUNDEFMSG = 'GUI_RUNDEFMSG'
Global Const $GUI_AVISTOP = 0
Global Const $GUI_AVISTART = 1
Global Const $GUI_AVICLOSE = 2
Global Const $GUI_CHECKED = 1
Global Const $GUI_INDETERMINATE = 2
Global Const $GUI_UNCHECKED = 4
Global Const $GUI_DROPACCEPTED = 8
Global Const $GUI_NODROPACCEPTED = 4096
Global Const $GUI_ACCEPTFILES = $GUI_DROPACCEPTED
Global Const $GUI_SHOW = 16
Global Const $GUI_HIDE = 32
Global Const $GUI_ENABLE = 64
Global Const $GUI_DISABLE = 128
Global Const $GUI_FOCUS = 256
Global Const $GUI_NOFOCUS = 8192
Global Const $GUI_DEFBUTTON = 512
Global Const $GUI_EXPAND = 1024
Global Const $GUI_ONTOP = 2048
Global Const $GUI_FONTITALIC = 2
Global Const $GUI_FONTUNDER = 4
Global Const $GUI_FONTSTRIKE = 8
Global Const $GUI_DOCKAUTO = 0x0001
Global Const $GUI_DOCKLEFT = 0x0002
Global Const $GUI_DOCKRIGHT = 0x0004
Global Const $GUI_DOCKHCENTER = 0x0008
Global Const $GUI_DOCKTOP = 0x0020
Global Const $GUI_DOCKBOTTOM = 0x0040
Global Const $GUI_DOCKVCENTER = 0x0080
Global Const $GUI_DOCKWIDTH = 0x0100
Global Const $GUI_DOCKHEIGHT = 0x0200
Global Const $GUI_DOCKSIZE = 0x0300
Global Const $GUI_DOCKMENUBAR = 0x0220
Global Const $GUI_DOCKSTATEBAR = 0x0240
Global Const $GUI_DOCKALL = 0x0322
Global Const $GUI_DOCKBORDERS = 0x0066
Global Const $GUI_GR_CLOSE = 1
Global Const $GUI_GR_LINE = 2
Global Const $GUI_GR_BEZIER = 4
Global Const $GUI_GR_MOVE = 6
Global Const $GUI_GR_COLOR = 8
Global Const $GUI_GR_RECT = 10
Global Const $GUI_GR_ELLIPSE = 12
Global Const $GUI_GR_PIE = 14
Global Const $GUI_GR_DOT = 16
Global Const $GUI_GR_PIXEL = 18
Global Const $GUI_GR_HINT = 20
Global Const $GUI_GR_REFRESH = 22
Global Const $GUI_GR_PENSIZE = 24
Global Const $GUI_GR_NOBKCOLOR = -2
Global Const $GUI_BKCOLOR_DEFAULT = -1
Global Const $GUI_BKCOLOR_TRANSPARENT = -2
Global Const $GUI_BKCOLOR_LV_ALTERNATE = 0xFE000000
Global Const $GUI_WS_EX_PARENTDRAG = 0x00100000
Global Const $LBS_NOTIFY = 0x00000001
Global Const $LBS_SORT = 0x00000002
Global Const $LBS_NOREDRAW = 0x00000004
Global Const $LBS_MULTIPLESEL = 0x00000008
Global Const $LBS_OWNERDRAWFIXED = 0x00000010
Global Const $LBS_OWNERDRAWVARIABLE = 0x00000020
Global Const $LBS_HASSTRINGS = 0x00000040
Global Const $LBS_USETABSTOPS = 0x00000080
Global Const $LBS_NOINTEGRALHEIGHT = 0x00000100
Global Const $LBS_MULTICOLUMN = 0x00000200
Global Const $LBS_WANTKEYBOARDINPUT = 0x00000400
Global Const $LBS_EXTENDEDSEL = 0x00000800
Global Const $LBS_DISABLENOSCROLL = 0x00001000
Global Const $LBS_NODATA = 0x00002000
Global Const $LBS_NOSEL = 0x00004000
Global Const $LBS_COMBOBOX = 0x00008000
Global Const $LBS_STANDARD = 0x00000003
Global Const $LB_ERR = -1
Global Const $LB_ERRATTRIBUTE = -3
Global Const $LB_ERRREQUIRED = -4
Global Const $LB_ERRSPACE = -2
Global Const $LB_ADDSTRING = 0x0180
Global Const $LB_INSERTSTRING = 0x0181
Global Const $LB_DELETESTRING = 0x0182
Global Const $LB_SELITEMRANGEEX = 0x0183
Global Const $LB_RESETCONTENT = 0x0184
Global Const $LB_SETSEL = 0x0185
Global Const $LB_SETCURSEL = 0x0186
Global Const $LB_GETSEL = 0x0187
Global Const $LB_GETCURSEL = 0x0188
Global Const $LB_GETTEXT = 0x0189
Global Const $LB_GETTEXTLEN = 0x018A
Global Const $LB_GETCOUNT = 0x018B
Global Const $LB_SELECTSTRING = 0x018C
Global Const $LB_DIR = 0x018D
Global Const $LB_GETTOPINDEX = 0x018E
Global Const $LB_FINDSTRING = 0x018F
Global Const $LB_GETSELCOUNT = 0x0190
Global Const $LB_GETSELITEMS = 0x0191
Global Const $LB_SETTABSTOPS = 0x0192
Global Const $LB_GETHORIZONTALEXTENT = 0x0193
Global Const $LB_SETHORIZONTALEXTENT = 0x0194
Global Const $LB_SETCOLUMNWIDTH = 0x0195
Global Const $LB_ADDFILE = 0x0196
Global Const $LB_SETTOPINDEX = 0x0197
Global Const $LB_GETITEMRECT = 0x0198
Global Const $LB_GETITEMDATA = 0x0199
Global Const $LB_SETITEMDATA = 0x019A
Global Const $LB_SELITEMRANGE = 0x019B
Global Const $LB_SETANCHORINDEX = 0x019C
Global Const $LB_GETANCHORINDEX = 0x019D
Global Const $LB_SETCARETINDEX = 0x019E
Global Const $LB_GETCARETINDEX = 0x019F
Global Const $LB_SETITEMHEIGHT = 0x01A0
Global Const $LB_GETITEMHEIGHT = 0x01A1
Global Const $LB_FINDSTRINGEXACT = 0x01A2
Global Const $LB_SETLOCALE = 0x01A5
Global Const $LB_GETLOCALE = 0x01A6
Global Const $LB_SETCOUNT = 0x01A7
Global Const $LB_INITSTORAGE = 0x01A8
Global Const $LB_ITEMFROMPOINT = 0x01A9
Global Const $LB_MULTIPLEADDSTRING = 0x01B1
Global Const $LB_GETLISTBOXINFO = 0x01B2
Global Const $LBN_ERRSPACE = 0xFFFFFFFE
Global Const $LBN_SELCHANGE = 0x00000001
Global Const $LBN_DBLCLK = 0x00000002
Global Const $LBN_SELCANCEL = 0x00000003
Global Const $LBN_SETFOCUS = 0x00000004
Global Const $LBN_KILLFOCUS = 0x00000005
Global Const $__LISTBOXCONSTANT_WS_BORDER = 0x00800000
Global Const $__LISTBOXCONSTANT_WS_VSCROLL = 0x00200000
Global Const $GUI_SS_DEFAULT_LIST = BitOR($LBS_SORT, $__LISTBOXCONSTANT_WS_BORDER, $__LISTBOXCONSTANT_WS_VSCROLL, $LBS_NOTIFY)
Global Const $LVS_ALIGNLEFT = 0x0800
Global Const $LVS_ALIGNMASK = 0x0c00
Global Const $LVS_ALIGNTOP = 0x0000
Global Const $LVS_AUTOARRANGE = 0x0100
Global Const $LVS_DEFAULT = 0x0000000D
Global Const $LVS_EDITLABELS = 0x0200
Global Const $LVS_ICON = 0x0000
Global Const $LVS_LIST = 0x0003
Global Const $LVS_NOCOLUMNHEADER = 0x4000
Global Const $LVS_NOLABELWRAP = 0x0080
Global Const $LVS_NOSCROLL = 0x2000
Global Const $LVS_NOSORTHEADER = 0x8000
Global Const $LVS_OWNERDATA = 0x1000
Global Const $LVS_OWNERDRAWFIXED = 0x0400
Global Const $LVS_REPORT = 0x0001
Global Const $LVS_SHAREIMAGELISTS = 0x0040
Global Const $LVS_SHOWSELALWAYS = 0x0008
Global Const $LVS_SINGLESEL = 0x0004
Global Const $LVS_SMALLICON = 0x0002
Global Const $LVS_SORTASCENDING = 0x0010
Global Const $LVS_SORTDESCENDING = 0x0020
Global Const $LVS_TYPEMASK = 0x0003
Global Const $LVS_TYPESTYLEMASK = 0xfc00
Global Const $LVS_EX_AUTOAUTOARRANGE = 0x01000000
Global Const $LVS_EX_AUTOCHECKSELECT = 0x08000000
Global Const $LVS_EX_AUTOSIZECOLUMNS = 0x10000000
Global Const $LVS_EX_BORDERSELECT = 0x00008000
Global Const $LVS_EX_CHECKBOXES = 0x00000004
Global Const $LVS_EX_COLUMNOVERFLOW = 0x80000000
Global Const $LVS_EX_COLUMNSNAPPOINTS = 0x40000000
Global Const $LVS_EX_DOUBLEBUFFER = 0x00010000
Global Const $LVS_EX_FLATSB = 0x00000100
Global Const $LVS_EX_FULLROWSELECT = 0x00000020
Global Const $LVS_EX_GRIDLINES = 0x00000001
Global Const $LVS_EX_HEADERDRAGDROP = 0x00000010
Global Const $LVS_EX_HEADERINALLVIEWS = 0x02000000
Global Const $LVS_EX_HIDELABELS = 0x20000
Global Const $LVS_EX_INFOTIP = 0x00000400
Global Const $LVS_EX_JUSTIFYCOLUMNS = 0x00200000
Global Const $LVS_EX_LABELTIP = 0x00004000
Global Const $LVS_EX_MULTIWORKAREAS = 0x00002000
Global Const $LVS_EX_ONECLICKACTIVATE = 0x00000040
Global Const $LVS_EX_REGIONAL = 0x00000200
Global Const $LVS_EX_SIMPLESELECT = 0x00100000
Global Const $LVS_EX_SNAPTOGRID = 0x00080000
Global Const $LVS_EX_SUBITEMIMAGES = 0x00000002
Global Const $LVS_EX_TRACKSELECT = 0x00000008
Global Const $LVS_EX_TRANSPARENTBKGND = 0x00400000
Global Const $LVS_EX_TRANSPARENTSHADOWTEXT = 0x00800000
Global Const $LVS_EX_TWOCLICKACTIVATE = 0x00000080
Global Const $LVS_EX_UNDERLINECOLD = 0x00001000
Global Const $LVS_EX_UNDERLINEHOT = 0x00000800
Global Const $LVGS_NORMAL = 0x00000000
Global Const $LVGS_COLLAPSED = 0x00000001
Global Const $LVGS_HIDDEN = 0x00000002
Global Const $LVGS_NOHEADER = 0x00000004
Global Const $LVGS_COLLAPSIBLE = 0x00000008
Global Const $LVGS_FOCUSED = 0x00000010
Global Const $LVGS_SELECTED = 0x00000020
Global Const $LVGS_SUBSETED = 0x00000040
Global Const $LVGS_SUBSETLINKFOCUSED = 0x00000080
Global Const $LVGGR_GROUP = 0
Global Const $LVGGR_HEADER = 1
Global Const $LVGGR_LABEL = 2
Global Const $LVGGR_SUBSETLINK = 3
Global Const $LV_ERR = -1
Global Const $LVBKIF_SOURCE_NONE = 0x00000000
Global Const $LVBKIF_SOURCE_HBITMAP = 0x00000001
Global Const $LVBKIF_SOURCE_URL = 0x00000002
Global Const $LVBKIF_SOURCE_MASK = 0x00000003
Global Const $LVBKIF_STYLE_NORMAL = 0x00000000
Global Const $LVBKIF_STYLE_TILE = 0x00000010
Global Const $LVBKIF_STYLE_MASK = 0x00000010
Global Const $LVBKIF_FLAG_TILEOFFSET = 0x00000100
Global Const $LVBKIF_TYPE_WATERMARK = 0x10000000
Global Const $LV_VIEW_DETAILS = 0x0001
Global Const $LV_VIEW_ICON = 0x0000
Global Const $LV_VIEW_LIST = 0x0003
Global Const $LV_VIEW_SMALLICON = 0x0002
Global Const $LV_VIEW_TILE = 0x0004
Global Const $LVA_ALIGNLEFT = 0x0001
Global Const $LVA_ALIGNTOP = 0x0002
Global Const $LVA_DEFAULT = 0x0000
Global Const $LVA_SNAPTOGRID = 0x0005
Global Const $LVCDI_ITEM = 0x00000000
Global Const $LVCDI_GROUP = 0x00000001
Global Const $LVCF_ALLDATA = 0X0000003F
Global Const $LVCF_FMT = 0x0001
Global Const $LVCF_IMAGE = 0x0010
Global Const $LVCFMT_JUSTIFYMASK = 0x0003
Global Const $LVCF_TEXT = 0x0004
Global Const $LVCF_WIDTH = 0x0002
Global Const $LVCFMT_BITMAP_ON_RIGHT = 0x1000
Global Const $LVCFMT_CENTER = 0x0002
Global Const $LVCFMT_COL_HAS_IMAGES = 0x8000
Global Const $LVCFMT_IMAGE = 0x0800
Global Const $LVCFMT_LEFT = 0x0000
Global Const $LVCFMT_RIGHT = 0x0001
Global Const $LVFI_NEARESTXY = 0x0040
Global Const $LVFI_PARAM = 0x0001
Global Const $LVFI_PARTIAL = 0x0008
Global Const $LVFI_STRING = 0x0002
Global Const $LVFI_WRAP = 0x0020
Global Const $LVGA_FOOTER_LEFT = 0x00000008
Global Const $LVGA_FOOTER_CENTER = 0x00000010
Global Const $LVGA_FOOTER_RIGHT = 0x00000020
Global Const $LVGA_HEADER_LEFT = 0x00000001
Global Const $LVGA_HEADER_CENTER = 0x00000002
Global Const $LVGA_HEADER_RIGHT = 0x00000004
Global Const $LVGF_ALIGN = 0x00000008
Global Const $LVGF_DESCRIPTIONTOP = 0x00000400
Global Const $LVGF_DESCRIPTIONBOTTOM = 0x00000800
Global Const $LVGF_EXTENDEDIMAGE = 0x00002000
Global Const $LVGF_FOOTER = 0x00000002
Global Const $LVGF_GROUPID = 0x00000010
Global Const $LVGF_HEADER = 0x00000001
Global Const $LVGF_ITEMS = 0x00004000
Global Const $LVGF_NONE = 0x00000000
Global Const $LVGF_STATE = 0x00000004
Global Const $LVGF_SUBSET = 0x00008000
Global Const $LVGF_SUBSETITEMS = 0x00010000
Global Const $LVGF_SUBTITLE = 0x00000100
Global Const $LVGF_TASK = 0x00000200
Global Const $LVGF_TITLEIMAGE = 0x00001000
Global Const $LVHT_ABOVE = 0x00000008
Global Const $LVHT_BELOW = 0x00000010
Global Const $LVHT_NOWHERE = 0x00000001
Global Const $LVHT_ONITEMICON = 0x00000002
Global Const $LVHT_ONITEMLABEL = 0x00000004
Global Const $LVHT_ONITEMSTATEICON = 0x00000008
Global Const $LVHT_TOLEFT = 0x00000040
Global Const $LVHT_TORIGHT = 0x00000020
Global Const $LVHT_ONITEM = BitOR($LVHT_ONITEMICON, $LVHT_ONITEMLABEL, $LVHT_ONITEMSTATEICON)
Global Const $LVIF_COLFMT = 0x00010000
Global Const $LVIF_COLUMNS = 0x00000200
Global Const $LVIF_GROUPID = 0x00000100
Global Const $LVIF_IMAGE = 0x00000002
Global Const $LVIF_INDENT = 0x00000010
Global Const $LVIF_NORECOMPUTE = 0x00000800
Global Const $LVIF_PARAM = 0x00000004
Global Const $LVIF_STATE = 0x00000008
Global Const $LVIF_TEXT = 0x00000001
Global Const $LVIM_AFTER = 0x00000001
Global Const $LVIR_BOUNDS = 0
Global Const $LVIR_ICON = 1
Global Const $LVIR_LABEL = 2
Global Const $LVIR_SELECTBOUNDS = 3
Global Const $LVIS_CUT = 0x0004
Global Const $LVIS_DROPHILITED = 0x0008
Global Const $LVIS_FOCUSED = 0x0001
Global Const $LVIS_OVERLAYMASK = 0x0F00
Global Const $LVIS_SELECTED = 0x0002
Global Const $LVIS_STATEIMAGEMASK = 0xF000
Global Const $LVM_FIRST = 0x1000
Global Const $LVM_APPROXIMATEVIEWRECT =($LVM_FIRST + 64)
Global Const $LVM_ARRANGE =($LVM_FIRST + 22)
Global Const $LVM_CANCELEDITLABEL =($LVM_FIRST + 179)
Global Const $LVM_CREATEDRAGIMAGE =($LVM_FIRST + 33)
Global Const $LVM_DELETEALLITEMS =($LVM_FIRST + 9)
Global Const $LVM_DELETECOLUMN =($LVM_FIRST + 28)
Global Const $LVM_DELETEITEM =($LVM_FIRST + 8)
Global Const $LVM_EDITLABELA =($LVM_FIRST + 23)
Global Const $LVM_EDITLABELW =($LVM_FIRST + 118)
Global Const $LVM_EDITLABEL = $LVM_EDITLABELA
Global Const $LVM_ENABLEGROUPVIEW =($LVM_FIRST + 157)
Global Const $LVM_ENSUREVISIBLE =($LVM_FIRST + 19)
Global Const $LVM_FINDITEM =($LVM_FIRST + 13)
Global Const $LVM_GETBKCOLOR =($LVM_FIRST + 0)
Global Const $LVM_GETBKIMAGEA =($LVM_FIRST + 69)
Global Const $LVM_GETBKIMAGEW =($LVM_FIRST + 139)
Global Const $LVM_GETCALLBACKMASK =($LVM_FIRST + 10)
Global Const $LVM_GETCOLUMNA =($LVM_FIRST + 25)
Global Const $LVM_GETCOLUMNW =($LVM_FIRST + 95)
Global Const $LVM_GETCOLUMNORDERARRAY =($LVM_FIRST + 59)
Global Const $LVM_GETCOLUMNWIDTH =($LVM_FIRST + 29)
Global Const $LVM_GETCOUNTPERPAGE =($LVM_FIRST + 40)
Global Const $LVM_GETEDITCONTROL =($LVM_FIRST + 24)
Global Const $LVM_GETEMPTYTEXT =($LVM_FIRST + 204)
Global Const $LVM_GETEXTENDEDLISTVIEWSTYLE =($LVM_FIRST + 55)
Global Const $LVM_GETFOCUSEDGROUP =($LVM_FIRST + 93)
Global Const $LVM_GETFOOTERINFO =($LVM_FIRST + 206)
Global Const $LVM_GETFOOTERITEM =($LVM_FIRST + 208)
Global Const $LVM_GETFOOTERITEMRECT =($LVM_FIRST + 207)
Global Const $LVM_GETFOOTERRECT =($LVM_FIRST + 205)
Global Const $LVM_GETGROUPCOUNT =($LVM_FIRST + 152)
Global Const $LVM_GETGROUPINFO =($LVM_FIRST + 149)
Global Const $LVM_GETGROUPINFOBYINDEX =($LVM_FIRST + 153)
Global Const $LVM_GETGROUPMETRICS =($LVM_FIRST + 156)
Global Const $LVM_GETGROUPRECT =($LVM_FIRST + 98)
Global Const $LVM_GETGROUPSTATE =($LVM_FIRST + 92)
Global Const $LVM_GETHEADER =($LVM_FIRST + 31)
Global Const $LVM_GETHOTCURSOR =($LVM_FIRST + 63)
Global Const $LVM_GETHOTITEM =($LVM_FIRST + 61)
Global Const $LVM_GETHOVERTIME =($LVM_FIRST + 72)
Global Const $LVM_GETIMAGELIST =($LVM_FIRST + 2)
Global Const $LVM_GETINSERTMARK =($LVM_FIRST + 167)
Global Const $LVM_GETINSERTMARKCOLOR =($LVM_FIRST + 171)
Global Const $LVM_GETINSERTMARKRECT =($LVM_FIRST + 169)
Global Const $LVM_GETISEARCHSTRINGA =($LVM_FIRST + 52)
Global Const $LVM_GETISEARCHSTRINGW =($LVM_FIRST + 117)
Global Const $LVM_GETITEMA =($LVM_FIRST + 5)
Global Const $LVM_GETITEMW =($LVM_FIRST + 75)
Global Const $LVM_GETITEMCOUNT =($LVM_FIRST + 4)
Global Const $LVM_GETITEMINDEXRECT =($LVM_FIRST + 209)
Global Const $LVM_GETITEMPOSITION =($LVM_FIRST + 16)
Global Const $LVM_GETITEMRECT =($LVM_FIRST + 14)
Global Const $LVM_GETITEMSPACING =($LVM_FIRST + 51)
Global Const $LVM_GETITEMSTATE =($LVM_FIRST + 44)
Global Const $LVM_GETITEMTEXTA =($LVM_FIRST + 45)
Global Const $LVM_GETITEMTEXTW =($LVM_FIRST + 115)
Global Const $LVM_GETNEXTITEM =($LVM_FIRST + 12)
Global Const $LVM_GETNEXTITEMINDEX =($LVM_FIRST + 211)
Global Const $LVM_GETNUMBEROFWORKAREAS =($LVM_FIRST + 73)
Global Const $LVM_GETORIGIN =($LVM_FIRST + 41)
Global Const $LVM_GETOUTLINECOLOR =($LVM_FIRST + 176)
Global Const $LVM_GETSELECTEDCOLUMN =($LVM_FIRST + 174)
Global Const $LVM_GETSELECTEDCOUNT =($LVM_FIRST + 50)
Global Const $LVM_GETSELECTIONMARK =($LVM_FIRST + 66)
Global Const $LVM_GETSTRINGWIDTHA =($LVM_FIRST + 17)
Global Const $LVM_GETSTRINGWIDTHW =($LVM_FIRST + 87)
Global Const $LVM_GETSUBITEMRECT =($LVM_FIRST + 56)
Global Const $LVM_GETTEXTBKCOLOR =($LVM_FIRST + 37)
Global Const $LVM_GETTEXTCOLOR =($LVM_FIRST + 35)
Global Const $LVM_GETTILEINFO =($LVM_FIRST + 165)
Global Const $LVM_GETTILEVIEWINFO =($LVM_FIRST + 163)
Global Const $LVM_GETTOOLTIPS =($LVM_FIRST + 78)
Global Const $LVM_GETTOPINDEX =($LVM_FIRST + 39)
Global Const $LVM_GETUNICODEFORMAT = 0x2000 + 6
Global Const $LVM_GETVIEW =($LVM_FIRST + 143)
Global Const $LVM_GETVIEWRECT =($LVM_FIRST + 34)
Global Const $LVM_GETWORKAREAS =($LVM_FIRST + 70)
Global Const $LVM_HASGROUP =($LVM_FIRST + 161)
Global Const $LVM_HITTEST =($LVM_FIRST + 18)
Global Const $LVM_INSERTCOLUMNA =($LVM_FIRST + 27)
Global Const $LVM_INSERTCOLUMNW =($LVM_FIRST + 97)
Global Const $LVM_INSERTGROUP =($LVM_FIRST + 145)
Global Const $LVM_INSERTGROUPSORTED =($LVM_FIRST + 159)
Global Const $LVM_INSERTITEMA =($LVM_FIRST + 7)
Global Const $LVM_INSERTITEMW =($LVM_FIRST + 77)
Global Const $LVM_INSERTMARKHITTEST =($LVM_FIRST + 168)
Global Const $LVM_ISGROUPVIEWENABLED =($LVM_FIRST + 175)
Global Const $LVM_ISITEMVISIBLE =($LVM_FIRST + 182)
Global Const $LVM_MAPIDTOINDEX =($LVM_FIRST + 181)
Global Const $LVM_MAPINDEXTOID =($LVM_FIRST + 180)
Global Const $LVM_MOVEGROUP =($LVM_FIRST + 151)
Global Const $LVM_REDRAWITEMS =($LVM_FIRST + 21)
Global Const $LVM_REMOVEALLGROUPS =($LVM_FIRST + 160)
Global Const $LVM_REMOVEGROUP =($LVM_FIRST + 150)
Global Const $LVM_SCROLL =($LVM_FIRST + 20)
Global Const $LVM_SETBKCOLOR =($LVM_FIRST + 1)
Global Const $LVM_SETBKIMAGEA =($LVM_FIRST + 68)
Global Const $LVM_SETBKIMAGEW =($LVM_FIRST + 138)
Global Const $LVM_SETCALLBACKMASK =($LVM_FIRST + 11)
Global Const $LVM_SETCOLUMNA =($LVM_FIRST + 26)
Global Const $LVM_SETCOLUMNW =($LVM_FIRST + 96)
Global Const $LVM_SETCOLUMNORDERARRAY =($LVM_FIRST + 58)
Global Const $LVM_SETCOLUMNWIDTH =($LVM_FIRST + 30)
Global Const $LVM_SETEXTENDEDLISTVIEWSTYLE =($LVM_FIRST + 54)
Global Const $LVM_SETGROUPINFO =($LVM_FIRST + 147)
Global Const $LVM_SETGROUPMETRICS =($LVM_FIRST + 155)
Global Const $LVM_SETHOTCURSOR =($LVM_FIRST + 62)
Global Const $LVM_SETHOTITEM =($LVM_FIRST + 60)
Global Const $LVM_SETHOVERTIME =($LVM_FIRST + 71)
Global Const $LVM_SETICONSPACING =($LVM_FIRST + 53)
Global Const $LVM_SETIMAGELIST =($LVM_FIRST + 3)
Global Const $LVM_SETINFOTIP =($LVM_FIRST + 173)
Global Const $LVM_SETINSERTMARK =($LVM_FIRST + 166)
Global Const $LVM_SETINSERTMARKCOLOR =($LVM_FIRST + 170)
Global Const $LVM_SETITEMA =($LVM_FIRST + 6)
Global Const $LVM_SETITEMW =($LVM_FIRST + 76)
Global Const $LVM_SETITEMCOUNT =($LVM_FIRST + 47)
Global Const $LVM_SETITEMINDEXSTATE =($LVM_FIRST + 210)
Global Const $LVM_SETITEMPOSITION =($LVM_FIRST + 15)
Global Const $LVM_SETITEMPOSITION32 =($LVM_FIRST + 49)
Global Const $LVM_SETITEMSTATE =($LVM_FIRST + 43)
Global Const $LVM_SETITEMTEXTA =($LVM_FIRST + 46)
Global Const $LVM_SETITEMTEXTW =($LVM_FIRST + 116)
Global Const $LVM_SETOUTLINECOLOR =($LVM_FIRST + 177)
Global Const $LVM_SETSELECTEDCOLUMN =($LVM_FIRST + 140)
Global Const $LVM_SETSELECTIONMARK =($LVM_FIRST + 67)
Global Const $LVM_SETTEXTBKCOLOR =($LVM_FIRST + 38)
Global Const $LVM_SETTEXTCOLOR =($LVM_FIRST + 36)
Global Const $LVM_SETTILEINFO =($LVM_FIRST + 164)
Global Const $LVM_SETTILEVIEWINFO =($LVM_FIRST + 162)
Global Const $LVM_SETTILEWIDTH =($LVM_FIRST + 141)
Global Const $LVM_SETTOOLTIPS =($LVM_FIRST + 74)
Global Const $LVM_SETUNICODEFORMAT = 0x2000 + 5
Global Const $LVM_SETVIEW =($LVM_FIRST + 142)
Global Const $LVM_SETWORKAREAS =($LVM_FIRST + 65)
Global Const $LVM_SORTGROUPS =($LVM_FIRST + 158)
Global Const $LVM_SORTITEMS =($LVM_FIRST + 48)
Global Const $LVM_SORTITEMSEX =($LVM_FIRST + 81)
Global Const $LVM_SUBITEMHITTEST =($LVM_FIRST + 57)
Global Const $LVM_UPDATE =($LVM_FIRST + 42)
Global Const $LVN_FIRST = -100
Global Const $LVN_LAST = -199
Global Const $LVN_BEGINDRAG =($LVN_FIRST - 9)
Global Const $LVN_BEGINLABELEDITA =($LVN_FIRST - 5)
Global Const $LVN_BEGINLABELEDITW =($LVN_FIRST - 75)
Global Const $LVN_BEGINRDRAG =($LVN_FIRST - 11)
Global Const $LVN_BEGINSCROLL =($LVN_FIRST - 80)
Global Const $LVN_COLUMNCLICK =($LVN_FIRST - 8)
Global Const $LVN_COLUMNDROPDOWN =($LVN_FIRST - 64)
Global Const $LVN_COLUMNOVERFLOWCLICK =($LVN_FIRST - 66)
Global Const $LVN_DELETEALLITEMS =($LVN_FIRST - 4)
Global Const $LVN_DELETEITEM =($LVN_FIRST - 3)
Global Const $LVN_ENDLABELEDITA =($LVN_FIRST - 6)
Global Const $LVN_ENDLABELEDITW =($LVN_FIRST - 76)
Global Const $LVN_ENDSCROLL =($LVN_FIRST - 81)
Global Const $LVN_GETDISPINFOA =($LVN_FIRST - 50)
Global Const $LVN_GETDISPINFOW =($LVN_FIRST - 77)
Global Const $LVN_GETDISPINFO = $LVN_GETDISPINFOA
Global Const $LVN_GETEMPTYMARKUP =($LVN_FIRST - 87)
Global Const $LVN_GETINFOTIPA =($LVN_FIRST - 57)
Global Const $LVN_GETINFOTIPW =($LVN_FIRST - 58)
Global Const $LVN_HOTTRACK =($LVN_FIRST - 21)
Global Const $LVN_INCREMENTALSEARCHA =($LVN_FIRST - 62)
Global Const $LVN_INCREMENTALSEARCHW =($LVN_FIRST - 63)
Global Const $LVN_INSERTITEM =($LVN_FIRST - 2)
Global Const $LVN_ITEMACTIVATE =($LVN_FIRST - 14)
Global Const $LVN_ITEMCHANGED =($LVN_FIRST - 1)
Global Const $LVN_ITEMCHANGING =($LVN_FIRST - 0)
Global Const $LVN_KEYDOWN =($LVN_FIRST - 55)
Global Const $LVN_LINKCLICK =($LVN_FIRST - 84)
Global Const $LVN_MARQUEEBEGIN =($LVN_FIRST - 56)
Global Const $LVN_ODCACHEHINT =($LVN_FIRST - 13)
Global Const $LVN_ODFINDITEMA =($LVN_FIRST - 52)
Global Const $LVN_ODFINDITEMW =($LVN_FIRST - 79)
Global Const $LVN_ODFINDITEM = $LVN_ODFINDITEMA
Global Const $LVN_ODSTATECHANGED =($LVN_FIRST - 15)
Global Const $LVN_SETDISPINFOA =($LVN_FIRST - 51)
Global Const $LVN_SETDISPINFOW =($LVN_FIRST - 78)
Global Const $LVNI_ABOVE = 0x0100
Global Const $LVNI_BELOW = 0x0200
Global Const $LVNI_TOLEFT = 0x0400
Global Const $LVNI_TORIGHT = 0x0800
Global Const $LVNI_ALL = 0x0000
Global Const $LVNI_CUT = 0x0004
Global Const $LVNI_DROPHILITED = 0x0008
Global Const $LVNI_FOCUSED = 0x0001
Global Const $LVNI_SELECTED = 0x0002
Global Const $LVSCW_AUTOSIZE = -1
Global Const $LVSCW_AUTOSIZE_USEHEADER = -2
Global Const $LVSICF_NOINVALIDATEALL = 0x00000001
Global Const $LVSICF_NOSCROLL = 0x00000002
Global Const $LVSIL_NORMAL = 0
Global Const $LVSIL_SMALL = 1
Global Const $LVSIL_STATE = 2
Global Const $GUI_SS_DEFAULT_LISTVIEW = BitOR($LVS_SHOWSELALWAYS, $LVS_SINGLESEL)
Global Const $PBS_MARQUEE = 0x00000008
Global Const $PBS_SMOOTH = 1
Global Const $PBS_SMOOTHREVERSE = 0x10
Global Const $PBS_VERTICAL = 4
Global Const $GUI_SS_DEFAULT_PROGRESS = 0
Global Const $__PROGRESSBARCONSTANT_WM_USER = 0X400
Global Const $PBM_DELTAPOS = $__PROGRESSBARCONSTANT_WM_USER + 3
Global Const $PBM_GETBARCOLOR = 0x040F
Global Const $PBM_GETBKCOLOR = 0x040E
Global Const $PBM_GETPOS = $__PROGRESSBARCONSTANT_WM_USER + 8
Global Const $PBM_GETRANGE = $__PROGRESSBARCONSTANT_WM_USER + 7
Global Const $PBM_GETSTATE = 0x0411
Global Const $PBM_GETSTEP = 0x040D
Global Const $PBM_SETBARCOLOR = $__PROGRESSBARCONSTANT_WM_USER + 9
Global Const $PBM_SETBKCOLOR = 0x2000 + 1
Global Const $PBM_SETMARQUEE = $__PROGRESSBARCONSTANT_WM_USER + 10
Global Const $PBM_SETPOS = $__PROGRESSBARCONSTANT_WM_USER + 2
Global Const $PBM_SETRANGE = $__PROGRESSBARCONSTANT_WM_USER + 1
Global Const $PBM_SETRANGE32 = $__PROGRESSBARCONSTANT_WM_USER + 6
Global Const $PBM_SETSTATE = 0x0410
Global Const $PBM_SETSTEP = $__PROGRESSBARCONSTANT_WM_USER + 4
Global Const $PBM_STEPIT = $__PROGRESSBARCONSTANT_WM_USER + 5
Global Const $SS_LEFT = 0x0
Global Const $SS_CENTER = 0x1
Global Const $SS_RIGHT = 0x2
Global Const $SS_ICON = 0x3
Global Const $SS_BLACKRECT = 0x4
Global Const $SS_GRAYRECT = 0x5
Global Const $SS_WHITERECT = 0x6
Global Const $SS_BLACKFRAME = 0x7
Global Const $SS_GRAYFRAME = 0x8
Global Const $SS_WHITEFRAME = 0x9
Global Const $SS_SIMPLE = 0xB
Global Const $SS_LEFTNOWORDWRAP = 0xC
Global Const $SS_BITMAP = 0xE
Global Const $SS_ETCHEDHORZ = 0x10
Global Const $SS_ETCHEDVERT = 0x11
Global Const $SS_ETCHEDFRAME = 0x12
Global Const $SS_NOPREFIX = 0x0080
Global Const $SS_NOTIFY = 0x0100
Global Const $SS_CENTERIMAGE = 0x0200
Global Const $SS_RIGHTJUST = 0x0400
Global Const $SS_SUNKEN = 0x1000
Global Const $GUI_SS_DEFAULT_LABEL = 0
Global Const $GUI_SS_DEFAULT_GRAPHIC = 0
Global Const $GUI_SS_DEFAULT_ICON = $SS_NOTIFY
Global Const $GUI_SS_DEFAULT_PIC = $SS_NOTIFY
Global Const $TCS_BOTTOM = 0x00000002
Global Const $TCS_BUTTONS = 0x00000100
Global Const $TCS_FIXEDWIDTH = 0x00000400
Global Const $TCS_FLATBUTTONS = 0x00000008
Global Const $TCS_FOCUSNEVER = 0x00008000
Global Const $TCS_FOCUSONBUTTONDOWN = 0x00001000
Global Const $TCS_FORCEICONLEFT = 0x00000010
Global Const $TCS_FORCELABELLEFT = 0x00000020
Global Const $TCS_HOTTRACK = 0x00000040
Global Const $TCS_MULTILINE = 0x00000200
Global Const $TCS_MULTISELECT = 0x00000004
Global Const $TCS_OWNERDRAWFIXED = 0x00002000
Global Const $TCS_RAGGEDRIGHT = 0x00000800
Global Const $TCS_RIGHT = 0x00000002
Global Const $TCS_RIGHTJUSTIFY = 0x00000000
Global Const $TCS_SCROLLOPPOSITE = 0x00000001
Global Const $TCS_SINGLELINE = 0x00000000
Global Const $TCS_TABS = 0x00000000
Global Const $TCS_TOOLTIPS = 0x00004000
Global Const $TCS_VERTICAL = 0x00000080
Global Const $TCS_EX_FLATSEPARATORS = 0x00000001
Global Const $TCS_EX_REGISTERDROP = 0x00000002
Global Const $TCHT_NOWHERE = 0x00000001
Global Const $TCHT_ONITEMICON = 0x00000002
Global Const $TCHT_ONITEMLABEL = 0x00000004
Global Const $TCHT_ONITEM = 0x00000006
Global Const $TCIF_TEXT = 0x00000001
Global Const $TCIF_IMAGE = 0x00000002
Global Const $TCIF_RTLREADING = 0x00000004
Global Const $TCIF_PARAM = 0x00000008
Global Const $TCIF_STATE = 0x00000010
Global Const $TCIF_ALLDATA = 0x0000001B
Global Const $TCIS_BUTTONPRESSED = 0x00000001
Global Const $TCIS_HIGHLIGHTED = 0x00000002
Global Const $TC_ERR = -1
Global Const $GUI_SS_DEFAULT_TAB = 0
Global Const $TCM_FIRST = 0x1300
Global Const $TCCM_FIRST = 0X2000
Global Const $TCM_ADJUSTRECT =($TCM_FIRST + 40)
Global Const $TCM_DELETEALLITEMS =($TCM_FIRST + 9)
Global Const $TCM_DELETEITEM =($TCM_FIRST + 8)
Global Const $TCM_DESELECTALL =($TCM_FIRST + 50)
Global Const $TCM_GETCURFOCUS =($TCM_FIRST + 47)
Global Const $TCM_GETCURSEL =($TCM_FIRST + 11)
Global Const $TCM_GETEXTENDEDSTYLE =($TCM_FIRST + 53)
Global Const $TCM_GETIMAGELIST =($TCM_FIRST + 2)
Global Const $TCM_GETITEMA =($TCM_FIRST + 5)
Global Const $TCM_GETITEMW =($TCM_FIRST + 60)
Global Const $TCM_GETITEMCOUNT =($TCM_FIRST + 4)
Global Const $TCM_GETITEMRECT =($TCM_FIRST + 10)
Global Const $TCM_GETROWCOUNT =($TCM_FIRST + 44)
Global Const $TCM_GETTOOLTIPS =($TCM_FIRST + 45)
Global Const $TCCM_GETUNICODEFORMAT =($TCCM_FIRST + 6)
Global Const $TCM_GETUNICODEFORMAT = $TCCM_GETUNICODEFORMAT
Global Const $TCM_HIGHLIGHTITEM =($TCM_FIRST + 51)
Global Const $TCM_HITTEST =($TCM_FIRST + 13)
Global Const $TCM_INSERTITEMA =($TCM_FIRST + 7)
Global Const $TCM_INSERTITEMW =($TCM_FIRST + 62)
Global Const $TCM_REMOVEIMAGE =($TCM_FIRST + 42)
Global Const $TCM_SETITEMA =($TCM_FIRST + 6)
Global Const $TCM_SETITEMW =($TCM_FIRST + 61)
Global Const $TCM_SETITEMEXTRA =($TCM_FIRST + 14)
Global Const $TCM_SETITEMSIZE = $TCM_FIRST + 41
Global Const $TCM_SETCURFOCUS =($TCM_FIRST + 48)
Global Const $TCM_SETCURSEL =($TCM_FIRST + 12)
Global Const $TCM_SETEXTENDEDSTYLE =($TCM_FIRST + 52)
Global Const $TCM_SETIMAGELIST = $TCM_FIRST + 3
Global Const $TCM_SETMINTABWIDTH =($TCM_FIRST + 49)
Global Const $TCM_SETPADDING =($TCM_FIRST + 43)
Global Const $TCM_SETTOOLTIPS =($TCM_FIRST + 46)
Global Const $TCCM_SETUNICODEFORMAT =($TCCM_FIRST + 5)
Global Const $TCM_SETUNICODEFORMAT = $TCCM_SETUNICODEFORMAT
Global Const $TCN_FIRST = -550
Global Const $TCN_FOCUSCHANGE =($TCN_FIRST - 4)
Global Const $TCN_GETOBJECT =($TCN_FIRST - 3)
Global Const $TCN_KEYDOWN =($TCN_FIRST - 0)
Global Const $TCN_SELCHANGE =($TCN_FIRST - 1)
Global Const $TCN_SELCHANGING =($TCN_FIRST - 2)
Global Const $FW_DONTCARE = 0
Global Const $FW_THIN = 100
Global Const $FW_EXTRALIGHT = 200
Global Const $FW_ULTRALIGHT = 200
Global Const $FW_LIGHT = 300
Global Const $FW_NORMAL = 400
Global Const $FW_REGULAR = 400
Global Const $FW_MEDIUM = 500
Global Const $FW_SEMIBOLD = 600
Global Const $FW_DEMIBOLD = 600
Global Const $FW_BOLD = 700
Global Const $FW_EXTRABOLD = 800
Global Const $FW_ULTRABOLD = 800
Global Const $FW_HEAVY = 900
Global Const $FW_BLACK = 900
Global Const $CF_EFFECTS = 0x100
Global Const $CF_PRINTERFONTS = 0x2
Global Const $CF_SCREENFONTS = 0x1
Global Const $CF_NOSCRIPTSEL = 0x800000
Global Const $CF_INITTOLOGFONTSTRUCT = 0x40
Global Const $LOGPIXELSX = 88
Global Const $LOGPIXELSY = 90
Global Const $ANSI_CHARSET = 0
Global Const $BALTIC_CHARSET = 186
Global Const $CHINESEBIG5_CHARSET = 136
Global Const $DEFAULT_CHARSET = 1
Global Const $EASTEUROPE_CHARSET = 238
Global Const $GB2312_CHARSET = 134
Global Const $GREEK_CHARSET = 161
Global Const $HANGEUL_CHARSET = 129
Global Const $MAC_CHARSET = 77
Global Const $OEM_CHARSET = 255
Global Const $RUSSIAN_CHARSET = 204
Global Const $SHIFTJIS_CHARSET = 128
Global Const $SYMBOL_CHARSET = 2
Global Const $TURKISH_CHARSET = 162
Global Const $VIETNAMESE_CHARSET = 163
Global Const $OUT_CHARACTER_PRECIS = 2
Global Const $OUT_DEFAULT_PRECIS = 0
Global Const $OUT_DEVICE_PRECIS = 5
Global Const $OUT_OUTLINE_PRECIS = 8
Global Const $OUT_PS_ONLY_PRECIS = 10
Global Const $OUT_RASTER_PRECIS = 6
Global Const $OUT_STRING_PRECIS = 1
Global Const $OUT_STROKE_PRECIS = 3
Global Const $OUT_TT_ONLY_PRECIS = 7
Global Const $OUT_TT_PRECIS = 4
Global Const $CLIP_CHARACTER_PRECIS = 1
Global Const $CLIP_DEFAULT_PRECIS = 0
Global Const $CLIP_EMBEDDED = 128
Global Const $CLIP_LH_ANGLES = 16
Global Const $CLIP_MASK = 0xF
Global Const $CLIP_STROKE_PRECIS = 2
Global Const $CLIP_TT_ALWAYS = 32
Global Const $ANTIALIASED_QUALITY = 4
Global Const $DEFAULT_QUALITY = 0
Global Const $DRAFT_QUALITY = 1
Global Const $NONANTIALIASED_QUALITY = 3
Global Const $PROOF_QUALITY = 2
Global Const $DEFAULT_PITCH = 0
Global Const $FIXED_PITCH = 1
Global Const $VARIABLE_PITCH = 2
Global Const $FF_DECORATIVE = 80
Global Const $FF_DONTCARE = 0
Global Const $FF_MODERN = 48
Global Const $FF_ROMAN = 16
Global Const $FF_SCRIPT = 64
Global Const $FF_SWISS = 32
Global Const $__MISCCONSTANT_CC_ANYCOLOR = 0x0100
Global Const $__MISCCONSTANT_CC_FULLOPEN = 0x0002
Global Const $__MISCCONSTANT_CC_RGBINIT = 0x0001
Global Const $tagCHOOSECOLOR = "dword Size;hwnd hWndOwnder;handle hInstance;dword rgbResult;ptr CustColors;dword Flags;lparam lCustData;" & _
"ptr lpfnHook;ptr lpTemplateName"
Global Const $tagCHOOSEFONT = "dword Size;hwnd hWndOwner;handle hDC;ptr LogFont;int PointSize;dword Flags;dword rgbColors;lparam CustData;" & _
"ptr fnHook;ptr TemplateName;handle hInstance;ptr szStyle;word FontType;int SizeMin;int SizeMax"
Func _Iif($fTest, $vTrueVal, $vFalseVal)
If $fTest Then
Return $vTrueVal
Else
Return $vFalseVal
EndIf
EndFunc
Func _HexToString($strHex)
If StringLeft($strHex, 2) = "0x" Then Return BinaryToString($strHex)
Return BinaryToString("0x" & $strHex)
EndFunc
Func _StringBetween($s_String, $s_Start, $s_End, $v_Case = -1)
Local $s_case = ""
If $v_Case = Default Or $v_Case = -1 Then $s_case = "(?i)"
Local $s_pattern_escape = "(\.|\||\*|\?|\+|\(|\)|\{|\}|\[|\]|\^|\$|\\)"
$s_Start = StringRegExpReplace($s_Start, $s_pattern_escape, "\\$1")
$s_End = StringRegExpReplace($s_End, $s_pattern_escape, "\\$1")
If $s_Start = "" Then $s_Start = "\A"
If $s_End = "" Then $s_End = "\z"
Local $a_ret = StringRegExp($s_String, "(?s)" & $s_case & $s_Start & "(.*?)" & $s_End, 3)
If @error Then Return SetError(1, 0, 0)
Return $a_ret
EndFunc
Func _StringProper($s_String)
Local $iX = 0
Local $CapNext = 1
Local $s_nStr = ""
Local $s_CurChar
For $iX = 1 To StringLen($s_String)
$s_CurChar = StringMid($s_String, $iX, 1)
Select
Case $CapNext = 1
If StringRegExp($s_CurChar, '[a-zA-ZÀ-ÿšœžŸ]') Then
$s_CurChar = StringUpper($s_CurChar)
$CapNext = 0
EndIf
Case Not StringRegExp($s_CurChar, '[a-zA-ZÀ-ÿšœžŸ]')
$CapNext = 1
Case Else
$s_CurChar = StringLower($s_CurChar)
EndSelect
$s_nStr &= $s_CurChar
Next
Return $s_nStr
EndFunc
Func _StringRepeat($sString, $iRepeatCount)
Local $sResult
Select
Case Not StringIsInt($iRepeatCount)
SetError(1)
Return ""
Case StringLen($sString) < 1
SetError(1)
Return ""
Case $iRepeatCount <= 0
SetError(1)
Return ""
Case Else
For $iCount = 1 To $iRepeatCount
$sResult &= $sString
Next
Return $sResult
EndSelect
EndFunc
Global Const $DDL_ARCHIVE = 0x00000020
Global Const $DDL_DIRECTORY = 0x00000010
Global Const $DDL_DRIVES = 0x00004000
Global Const $DDL_EXCLUSIVE = 0x00008000
Global Const $DDL_HIDDEN = 0x00000002
Global Const $DDL_READONLY = 0x00000001
Global Const $DDL_READWRITE = 0x00000000
Global Const $DDL_SYSTEM = 0x00000004
Global Const $OPT_COORDSRELATIVE = 0
Global Const $OPT_COORDSABSOLUTE = 1
Global Const $OPT_COORDSCLIENT = 2
Global Const $OPT_ERRORSILENT = 0
Global Const $OPT_ERRORFATAL = 1
Global Const $OPT_CAPSNOSTORE = 0
Global Const $OPT_CAPSSTORE = 1
Global Const $OPT_MATCHSTART = 1
Global Const $OPT_MATCHANY = 2
Global Const $OPT_MATCHEXACT = 3
Global Const $OPT_MATCHADVANCED = 4
Global Const $CCS_TOP = 0x01
Global Const $CCS_NOMOVEY = 0x02
Global Const $CCS_BOTTOM = 0x03
Global Const $CCS_NORESIZE = 0x04
Global Const $CCS_NOPARENTALIGN = 0x08
Global Const $CCS_NOHILITE = 0x10
Global Const $CCS_ADJUSTABLE = 0x20
Global Const $CCS_NODIVIDER = 0x40
Global Const $CCS_VERT = 0x0080
Global Const $CCS_LEFT = 0x0081
Global Const $CCS_NOMOVEX = 0x0082
Global Const $CCS_RIGHT = 0x0083
Global Const $DI_MASK = 0x0001
Global Const $DI_IMAGE = 0x0002
Global Const $DI_NORMAL = 0x0003
Global Const $DI_COMPAT = 0x0004
Global Const $DI_DEFAULTSIZE = 0x0008
Global Const $DI_NOMIRROR = 0x0010
Global Const $DISPLAY_DEVICE_ATTACHED_TO_DESKTOP = 0x00000001
Global Const $DISPLAY_DEVICE_MULTI_DRIVER = 0x00000002
Global Const $DISPLAY_DEVICE_PRIMARY_DEVICE = 0x00000004
Global Const $DISPLAY_DEVICE_MIRRORING_DRIVER = 0x00000008
Global Const $DISPLAY_DEVICE_VGA_COMPATIBLE = 0x00000010
Global Const $DISPLAY_DEVICE_REMOVABLE = 0x00000020
Global Const $DISPLAY_DEVICE_DISCONNECT = 0x02000000
Global Const $DISPLAY_DEVICE_REMOTE = 0x04000000
Global Const $DISPLAY_DEVICE_MODESPRUNED = 0x08000000
Global Const $FLASHW_CAPTION = 0x00000001
Global Const $FLASHW_TRAY = 0x00000002
Global Const $FLASHW_TIMER = 0x00000004
Global Const $FLASHW_TIMERNOFG = 0x0000000C
Global Const $FORMAT_MESSAGE_ALLOCATE_BUFFER = 0x00000100
Global Const $FORMAT_MESSAGE_IGNORE_INSERTS = 0x00000200
Global Const $FORMAT_MESSAGE_FROM_STRING = 0x00000400
Global Const $FORMAT_MESSAGE_FROM_HMODULE = 0x00000800
Global Const $FORMAT_MESSAGE_FROM_SYSTEM = 0x00001000
Global Const $FORMAT_MESSAGE_ARGUMENT_ARRAY = 0x00002000
Global Const $GW_HWNDFIRST = 0
Global Const $GW_HWNDLAST = 1
Global Const $GW_HWNDNEXT = 2
Global Const $GW_HWNDPREV = 3
Global Const $GW_OWNER = 4
Global Const $GW_CHILD = 5
Global Const $GWL_WNDPROC = 0xFFFFFFFC
Global Const $GWL_HINSTANCE = 0xFFFFFFFA
Global Const $GWL_HWNDPARENT = 0xFFFFFFF8
Global Const $GWL_ID = 0xFFFFFFF4
Global Const $GWL_STYLE = 0xFFFFFFF0
Global Const $GWL_EXSTYLE = 0xFFFFFFEC
Global Const $GWL_USERDATA = 0xFFFFFFEB
Global Const $STD_CUT = 0
Global Const $STD_COPY = 1
Global Const $STD_PASTE = 2
Global Const $STD_UNDO = 3
Global Const $STD_REDOW = 4
Global Const $STD_DELETE = 5
Global Const $STD_FILENEW = 6
Global Const $STD_FILEOPEN = 7
Global Const $STD_FILESAVE = 8
Global Const $STD_PRINTPRE = 9
Global Const $STD_PROPERTIES = 10
Global Const $STD_HELP = 11
Global Const $STD_FIND = 12
Global Const $STD_REPLACE = 13
Global Const $STD_PRINT = 14
Global Const $LR_DEFAULTCOLOR = 0x0000
Global Const $LR_MONOCHROME = 0x0001
Global Const $LR_COLOR = 0x0002
Global Const $LR_COPYRETURNORG = 0x0004
Global Const $LR_COPYDELETEORG = 0x0008
Global Const $LR_LOADFROMFILE = 0x0010
Global Const $LR_LOADTRANSPARENT = 0x0020
Global Const $LR_DEFAULTSIZE = 0x0040
Global Const $LR_VGACOLOR = 0x0080
Global Const $LR_LOADMAP3DCOLORS = 0x1000
Global Const $LR_CREATEDIBSECTION = 0x2000
Global Const $LR_COPYFROMRESOURCE = 0x4000
Global Const $LR_SHARED = 0x8000
Global Const $IMAGE_BITMAP = 0
Global Const $IMAGE_ICON = 1
Global Const $IMAGE_CURSOR = 2
Global Const $KB_SENDSPECIAL = 0
Global Const $KB_SENDRAW = 1
Global Const $KB_CAPSOFF = 0
Global Const $KB_CAPSON = 1
Global Const $DONT_RESOLVE_DLL_REFERENCES = 0x01
Global Const $LOAD_LIBRARY_AS_DATAFILE = 0x02
Global Const $LOAD_WITH_ALTERED_SEARCH_PATH = 0x08
Global Const $OBJID_WINDOW = 0x00000000
Global Const $OBJID_TITLEBAR = 0xFFFFFFFE
Global Const $OBJID_SIZEGRIP = 0xFFFFFFF9
Global Const $OBJID_CARET = 0xFFFFFFF8
Global Const $OBJID_CURSOR = 0xFFFFFFF7
Global Const $OBJID_ALERT = 0xFFFFFFF6
Global Const $OBJID_SOUND = 0xFFFFFFF5
Global Const $VK_DOWN = 0x28
Global Const $VK_END = 0x23
Global Const $VK_HOME = 0x24
Global Const $VK_LEFT = 0x25
Global Const $VK_NEXT = 0x22
Global Const $VK_PRIOR = 0x21
Global Const $VK_RIGHT = 0x27
Global Const $VK_UP = 0x26
Global Const $MB_OK = 0
Global Const $MB_OKCANCEL = 1
Global Const $MB_ABORTRETRYIGNORE = 2
Global Const $MB_YESNOCANCEL = 3
Global Const $MB_YESNO = 4
Global Const $MB_RETRYCANCEL = 5
Global Const $MB_ICONHAND = 16
Global Const $MB_ICONQUESTION = 32
Global Const $MB_ICONEXCLAMATION = 48
Global Const $MB_ICONASTERISK = 64
Global Const $MB_DEFBUTTON1 = 0
Global Const $MB_DEFBUTTON2 = 256
Global Const $MB_DEFBUTTON3 = 512
Global Const $MB_APPLMODAL = 0
Global Const $MB_SYSTEMMODAL = 4096
Global Const $MB_TASKMODAL = 8192
Global Const $MB_TOPMOST = 262144
Global Const $MB_RIGHTJUSTIFIED = 524288
Global Const $IDTIMEOUT = -1
Global Const $IDOK = 1
Global Const $IDCANCEL = 2
Global Const $IDABORT = 3
Global Const $IDRETRY = 4
Global Const $IDIGNORE = 5
Global Const $IDYES = 6
Global Const $IDNO = 7
Global Const $IDTRYAGAIN = 10
Global Const $IDCONTINUE = 11
Global Const $DLG_NOTITLE = 1
Global Const $DLG_NOTONTOP = 2
Global Const $DLG_TEXTLEFT = 4
Global Const $DLG_TEXTRIGHT = 8
Global Const $DLG_MOVEABLE = 16
Global Const $DLG_TEXTVCENTER = 32
Global Const $TIP_ICONNONE = 0
Global Const $TIP_ICONASTERISK = 1
Global Const $TIP_ICONEXCLAMATION = 2
Global Const $TIP_ICONHAND = 3
Global Const $TIP_NOSOUND = 16
Global Const $IDC_UNKNOWN = 0
Global Const $IDC_APPSTARTING = 1
Global Const $IDC_ARROW = 2
Global Const $IDC_CROSS = 3
Global Const $IDC_HAND = 32649
Global Const $IDC_HELP = 4
Global Const $IDC_IBEAM = 5
Global Const $IDC_ICON = 6
Global Const $IDC_NO = 7
Global Const $IDC_SIZE = 8
Global Const $IDC_SIZEALL = 9
Global Const $IDC_SIZENESW = 10
Global Const $IDC_SIZENS = 11
Global Const $IDC_SIZENWSE = 12
Global Const $IDC_SIZEWE = 13
Global Const $IDC_UPARROW = 14
Global Const $IDC_WAIT = 15
Global Const $IDI_APPLICATION = 32512
Global Const $IDI_ASTERISK = 32516
Global Const $IDI_EXCLAMATION = 32515
Global Const $IDI_HAND = 32513
Global Const $IDI_QUESTION = 32514
Global Const $IDI_WINLOGO = 32517
Global Const $SD_LOGOFF = 0
Global Const $SD_SHUTDOWN = 1
Global Const $SD_REBOOT = 2
Global Const $SD_FORCE = 4
Global Const $SD_POWERDOWN = 8
Global Const $STR_NOCASESENSE = 0
Global Const $STR_CASESENSE = 1
Global Const $STR_STRIPLEADING = 1
Global Const $STR_STRIPTRAILING = 2
Global Const $STR_STRIPSPACES = 4
Global Const $STR_STRIPALL = 8
Global Const $TRAY_ITEM_EXIT = 3
Global Const $TRAY_ITEM_PAUSE = 4
Global Const $TRAY_ITEM_FIRST = 7
Global Const $TRAY_CHECKED = 1
Global Const $TRAY_UNCHECKED = 4
Global Const $TRAY_ENABLE = 64
Global Const $TRAY_DISABLE = 128
Global Const $TRAY_FOCUS = 256
Global Const $TRAY_DEFAULT = 512
Global Const $TRAY_EVENT_SHOWICON = -3
Global Const $TRAY_EVENT_HIDEICON = -4
Global Const $TRAY_EVENT_FLASHICON = -5
Global Const $TRAY_EVENT_NOFLASHICON = -6
Global Const $TRAY_EVENT_PRIMARYDOWN = -7
Global Const $TRAY_EVENT_PRIMARYUP = -8
Global Const $TRAY_EVENT_SECONDARYDOWN = -9
Global Const $TRAY_EVENT_SECONDARYUP = -10
Global Const $TRAY_EVENT_MOUSEOVER = -11
Global Const $TRAY_EVENT_MOUSEOUT = -12
Global Const $TRAY_EVENT_PRIMARYDOUBLE = -13
Global Const $TRAY_EVENT_SECONDARYDOUBLE = -14
Global Const $STDIN_CHILD = 1
Global Const $STDOUT_CHILD = 2
Global Const $STDERR_CHILD = 4
Global Const $STDERR_MERGED = 8
Global Const $STDIO_INHERIT_PARENT = 0x10
Global Const $RUN_CREATE_NEW_CONSOLE = 0x00010000
Global Const $MOUSEEVENTF_ABSOLUTE = 0x8000
Global Const $MOUSEEVENTF_MOVE = 0x0001
Global Const $MOUSEEVENTF_LEFTDOWN = 0x0002
Global Const $MOUSEEVENTF_LEFTUP = 0x0004
Global Const $MOUSEEVENTF_RIGHTDOWN = 0x0008
Global Const $MOUSEEVENTF_RIGHTUP = 0x0010
Global Const $MOUSEEVENTF_MIDDLEDOWN = 0x0020
Global Const $MOUSEEVENTF_MIDDLEUP = 0x0040
Global Const $MOUSEEVENTF_WHEEL = 0x0800
Global Const $MOUSEEVENTF_XDOWN = 0x0080
Global Const $MOUSEEVENTF_XUP = 0x0100
Global Const $REG_NONE = 0
Global Const $REG_SZ = 1
Global Const $REG_EXPAND_SZ = 2
Global Const $REG_BINARY = 3
Global Const $REG_DWORD = 4
Global Const $REG_DWORD_BIG_ENDIAN = 5
Global Const $REG_LINK = 6
Global Const $REG_MULTI_SZ = 7
Global Const $REG_RESOURCE_LIST = 8
Global Const $REG_FULL_RESOURCE_DESCRIPTOR = 9
Global Const $REG_RESOURCE_REQUIREMENTS_LIST = 10
Global Const $HWND_BOTTOM = 1
Global Const $HWND_NOTOPMOST = -2
Global Const $HWND_TOP = 0
Global Const $HWND_TOPMOST = -1
Global Const $SWP_NOSIZE = 0x0001
Global Const $SWP_NOMOVE = 0x0002
Global Const $SWP_NOZORDER = 0x0004
Global Const $SWP_NOREDRAW = 0x0008
Global Const $SWP_NOACTIVATE = 0x0010
Global Const $SWP_FRAMECHANGED = 0x0020
Global Const $SWP_DRAWFRAME = 0x0020
Global Const $SWP_SHOWWINDOW = 0x0040
Global Const $SWP_HIDEWINDOW = 0x0080
Global Const $SWP_NOCOPYBITS = 0x0100
Global Const $SWP_NOOWNERZORDER = 0x0200
Global Const $SWP_NOREPOSITION = 0x0200
Global Const $SWP_NOSENDCHANGING = 0x0400
Global Const $SWP_DEFERERASE = 0x2000
Global Const $SWP_ASYNCWINDOWPOS = 0x4000
Global Const $LANG_AFRIKAANS = 0x36
Global Const $LANG_ALBANIAN = 0x1c
Global Const $LANG_ARABIC = 0x01
Global Const $LANG_ARMENIAN = 0x2b
Global Const $LANG_ASSAMESE = 0x4d
Global Const $LANG_AZERI = 0x2c
Global Const $LANG_BASQUE = 0x2d
Global Const $LANG_BELARUSIAN = 0x23
Global Const $LANG_BENGALI = 0x45
Global Const $LANG_BULGARIAN = 0x02
Global Const $LANG_CATALAN = 0x03
Global Const $LANG_CHINESE = 0x04
Global Const $LANG_CROATIAN = 0x1A
Global Const $LANG_CZECH = 0x05
Global Const $LANG_DANISH = 0x06
Global Const $LANG_DUTCH = 0x13
Global Const $LANG_ENGLISH = 0x09
Global Const $LANG_ESTONIAN = 0x25
Global Const $LANG_FAEROESE = 0x38
Global Const $LANG_FARSI = 0x29
Global Const $LANG_FINNISH = 0x0B
Global Const $LANG_FRENCH = 0x9C
Global Const $LANG_GEORGIAN = 0x37
Global Const $LANG_GERMAN = 0x07
Global Const $LANG_GREEK = 0x08
Global Const $LANG_GUJARATI = 0x47
Global Const $LANG_HEBREW = 0x0D
Global Const $LANG_HINDI = 0x39
Global Const $LANG_HUNGARIAN = 0x0E
Global Const $LANG_ICELANDIC = 0x0F
Global Const $LANG_INDONESIAN = 0x21
Global Const $LANG_ITALIAN = 0x10
Global Const $LANG_JAPANESE = 0x11
Global Const $LANG_KANNADA = 0x4b
Global Const $LANG_KASHMIRI = 0x60
Global Const $LANG_KAZAK = 0x3f
Global Const $LANG_KONKANI = 0x57
Global Const $LANG_KOREAN = 0x12
Global Const $LANG_LATVIAN = 0x26
Global Const $LANG_LITHUANIAN = 0x27
Global Const $LANG_MACEDONIAN = 0x2f
Global Const $LANG_MALAY = 0x3e
Global Const $LANG_MALAYALAM = 0x4c
Global Const $LANG_MANIPURI = 0x58
Global Const $LANG_MARATHI = 0x4e
Global Const $LANG_NEPALI = 0x61
Global Const $LANG_NEUTRAL = 0x0
Global Const $LANG_NORWEGIAN = 0x14
Global Const $LANG_ORIYA = 0x48
Global Const $LANG_POLISH = 0x15
Global Const $LANG_PORTUGUESE = 0x16
Global Const $LANG_PUNJABI = 0x46
Global Const $LANG_ROMANIAN = 0x18
Global Const $LANG_RUSSIAN = 0x19
Global Const $LANG_SANSKRIT = 0x4f
Global Const $LANG_SERBIAN = 0x1a
Global Const $LANG_SINDHI = 0x59
Global Const $LANG_SLOVAK = 0x1B
Global Const $LANG_SLOVENIAN = 0x24
Global Const $LANG_SPANISH = 0x0A
Global Const $LANG_SWAHILI = 0x41
Global Const $LANG_SWEDISH = 0x1D
Global Const $LANG_TAMIL = 0x49
Global Const $LANG_TATAR = 0x44
Global Const $LANG_TELUGU = 0x4a
Global Const $LANG_THAI = 0x1e
Global Const $LANG_TURKISH = 0x1F
Global Const $LANG_UKRAINIAN = 0x22
Global Const $LANG_URDU = 0x20
Global Const $LANG_UZBEK = 0x43
Global Const $LANG_VIETNAMESE = 0x2a
Global Const $SUBLANG_ARABIC_ALGERIA = 0x05
Global Const $SUBLANG_ARABIC_BAHRAIN = 0x0f
Global Const $SUBLANG_ARABIC_EGYPT = 0x03
Global Const $SUBLANG_ARABIC_IRAQ = 0x02
Global Const $SUBLANG_ARABIC_JORDAN = 0x0b
Global Const $SUBLANG_ARABIC_KUWAIT = 0x0d
Global Const $SUBLANG_ARABIC_LEBANON = 0x0c
Global Const $SUBLANG_ARABIC_LIBYA = 0x04
Global Const $SUBLANG_ARABIC_MOROCCO = 0x06
Global Const $SUBLANG_ARABIC_OMAN = 0x08
Global Const $SUBLANG_ARABIC_QATAR = 0x10
Global Const $SUBLANG_ARABIC_SAUDI_ARABIA = 0x01
Global Const $SUBLANG_ARABIC_SYRIA = 0x0a
Global Const $SUBLANG_ARABIC_TUNISIA = 0x07
Global Const $SUBLANG_ARABIC_UAE = 0x0e
Global Const $SUBLANG_ARABIC_YEMEN = 0x09
Global Const $SUBLANG_AZERI_CYRILLIC = 0x02
Global Const $SUBLANG_AZERI_LATIN = 0x01
Global Const $SUBLANG_CHINESE_HONGKONG = 0x03
Global Const $SUBLANG_CHINESE_MACAU = 0x05
Global Const $SUBLANG_CHINESE_SIMPLIFIED = 0x02
Global Const $SUBLANG_CHINESE_SINGAPORE = 0x04
Global Const $SUBLANG_CHINESE_TRADITIONAL = 0x01
Global Const $SUBLANG_DEFAULT = 0x01
Global Const $SUBLANG_DUTCH = 0x01
Global Const $SUBLANG_DUTCH_BELGIAN = 0x02
Global Const $SUBLANG_ENGLISH_AUS = 0x03
Global Const $SUBLANG_ENGLISH_BELIZE = 0x0a
Global Const $SUBLANG_ENGLISH_CAN = 0x04
Global Const $SUBLANG_ENGLISH_CARIBBEAN = 0x09
Global Const $SUBLANG_ENGLISH_EIRE = 0x06
Global Const $SUBLANG_ENGLISH_JAMAICA = 0x08
Global Const $SUBLANG_ENGLISH_NZ = 0x05
Global Const $SUBLANG_ENGLISH_PHILIPPINES = 0x0d
Global Const $SUBLANG_ENGLISH_SOUTH_AFRICA = 0x07
Global Const $SUBLANG_ENGLISH_TRINIDAD = 0x0b
Global Const $SUBLANG_ENGLISH_UK = 0x02
Global Const $SUBLANG_ENGLISH_US = 0x01
Global Const $SUBLANG_ENGLISH_ZIMBABWE = 0x0c
Global Const $SUBLANG_FRENCH = 0x01
Global Const $SUBLANG_FRENCH_BELGIAN = 0x02
Global Const $SUBLANG_FRENCH_CANADIAN = 0x03
Global Const $SUBLANG_FRENCH_LUXEMBOURG = 0x05
Global Const $SUBLANG_FRENCH_MONACO = 0x06
Global Const $SUBLANG_FRENCH_SWISS = 0x04
Global Const $SUBLANG_GERMAN = 0x01
Global Const $SUBLANG_GERMAN_AUSTRIAN = 0x03
Global Const $SUBLANG_GERMAN_LIECHTENSTEIN = 0x05
Global Const $SUBLANG_GERMAN_LUXEMBOURG = 0x04
Global Const $SUBLANG_GERMAN_SWISS = 0x02
Global Const $SUBLANG_ITALIAN = 0x01
Global Const $SUBLANG_ITALIAN_SWISS = 0x02
Global Const $SUBLANG_KASHMIRI_INDIA = 0x02
Global Const $SUBLANG_KOREAN = 0x01
Global Const $SUBLANG_LITHUANIAN = 0x01
Global Const $SUBLANG_MALAY_BRUNEI_DARUSSALAM = 0x02
Global Const $SUBLANG_MALAY_MALAYSIA = 0x01
Global Const $SUBLANG_NEPALI_INDIA = 0x02
Global Const $SUBLANG_NEUTRAL = 0x0
Global Const $SUBLANG_NORWEGIAN_BOKMAL = 0x01
Global Const $SUBLANG_NORWEGIAN_NYNORSK = 0x02
Global Const $SUBLANG_PORTUGUESE = 0x02
Global Const $SUBLANG_PORTUGUESE_BRAZILIAN = 0x01
Global Const $SUBLANG_SERBIAN_CYRILLIC = 0x03
Global Const $SUBLANG_SERBIAN_LATIN = 0x02
Global Const $SUBLANG_SPANISH = 0x01
Global Const $SUBLANG_SPANISH_ARGENTINA = 0x0b
Global Const $SUBLANG_SPANISH_BOLIVIA = 0x10
Global Const $SUBLANG_SPANISH_CHILE = 0x0d
Global Const $SUBLANG_SPANISH_COLOMBIA = 0x09
Global Const $SUBLANG_SPANISH_COSTA_RICA = 0x05
Global Const $SUBLANG_SPANISH_DOMINICAN_REPUBLIC = 0x07
Global Const $SUBLANG_SPANISH_ECUADOR = 0x0c
Global Const $SUBLANG_SPANISH_EL_SALVADOR = 0x11
Global Const $SUBLANG_SPANISH_GUATEMALA = 0x04
Global Const $SUBLANG_SPANISH_HONDURAS = 0x12
Global Const $SUBLANG_SPANISH_MEXICAN = 0x02
Global Const $SUBLANG_SPANISH_MODERN = 0x03
Global Const $SUBLANG_SPANISH_NICARAGUA = 0x13
Global Const $SUBLANG_SPANISH_PANAMA = 0x06
Global Const $SUBLANG_SPANISH_PARAGUAY = 0x0f
Global Const $SUBLANG_SPANISH_PERU = 0x0a
Global Const $SUBLANG_SPANISH_PUERTO_RICO = 0x14
Global Const $SUBLANG_SPANISH_URUGUAY = 0x0e
Global Const $SUBLANG_SPANISH_VENEZUELA = 0x08
Global Const $SUBLANG_SWEDISH = 0x01
Global Const $SUBLANG_SWEDISH_FINLAND = 0x02
Global Const $SUBLANG_SYS_DEFAULT = 0x02
Global Const $SUBLANG_URDU_INDIA = 0x02
Global Const $SUBLANG_URDU_PAKISTAN = 0x01
Global Const $SUBLANG_UZBEK_CYRILLIC = 0x02
Global Const $SORT_DEFAULT = 0x0
Global Const $SORT_JAPANESE_XJIS = 0x0
Global Const $SORT_JAPANESE_UNICODE = 0x1
Global Const $SORT_CHINESE_BIG5 = 0x0
Global Const $SORT_CHINESE_PRCP = 0x0
Global Const $SORT_CHINESE_UNICODE = 0x1
Global Const $SORT_CHINESE_PRC = 0x2
Global Const $SORT_KOREAN_KSC = 0x0
Global Const $SORT_KOREAN_UNICODE = 0x1
Global Const $SORT_GERMAN_PHONE_BOOK = 0x1
Global Const $SORT_HUNGARIAN_DEFAULT = 0x0
Global Const $SORT_HUNGARIAN_TECHNICAL = 0x1
Global Const $SORT_GEORGIAN_TRADITIONAL = 0x0
Global Const $SORT_GEORGIAN_MODERN = 0x1
Func _Max($nNum1, $nNum2)
If Not IsNumber($nNum1) Then Return SetError(1, 0, 0)
If Not IsNumber($nNum2) Then Return SetError(2, 0, 0)
If $nNum1 > $nNum2 Then
Return $nNum1
Else
Return $nNum2
EndIf
EndFunc
Func _Min($nNum1, $nNum2)
If(Not IsNumber($nNum1)) Then Return SetError(1, 0, 0)
If(Not IsNumber($nNum2)) Then Return SetError(2, 0, 0)
If $nNum1 > $nNum2 Then
Return $nNum2
Else
Return $nNum1
EndIf
EndFunc
Func _DateAdd($sType, $iValToAdd, $sDate)
Local $asTimePart[4]
Local $asDatePart[4]
Local $iJulianDate
$sType = StringLeft($sType, 1)
If StringInStr("D,M,Y,w,h,n,s", $sType) = 0 Or $sType = "" Then
Return SetError(1,0,0)
EndIf
If Not StringIsInt($iValToAdd) Then
Return SetError(2,0,0)
EndIf
If Not _DateIsValid($sDate) Then
Return SetError(3,0,0)
EndIf
_DateTimeSplit($sDate, $asDatePart, $asTimePart)
If $sType = "d" Or $sType = "w" Then
If $sType = "w" Then $iValToAdd = $iValToAdd * 7
$iJulianDate = _DateToDayValue($asDatePart[1], $asDatePart[2], $asDatePart[3]) + $iValToAdd
_DayValueToDate($iJulianDate, $asDatePart[1], $asDatePart[2], $asDatePart[3])
EndIf
If $sType = "m" Then
$asDatePart[2] = $asDatePart[2] + $iValToAdd
While $asDatePart[2] > 12
$asDatePart[2] = $asDatePart[2] - 12
$asDatePart[1] = $asDatePart[1] + 1
WEnd
While $asDatePart[2] < 1
$asDatePart[2] = $asDatePart[2] + 12
$asDatePart[1] = $asDatePart[1] - 1
WEnd
EndIf
If $sType = "y" Then
$asDatePart[1] = $asDatePart[1] + $iValToAdd
EndIf
If $sType = "h" Or $sType = "n" Or $sType = "s" Then
Local $iTimeVal = _TimeToTicks($asTimePart[1], $asTimePart[2], $asTimePart[3]) / 1000
If $sType = "h" Then $iTimeVal = $iTimeVal + $iValToAdd * 3600
If $sType = "n" Then $iTimeVal = $iTimeVal + $iValToAdd * 60
If $sType = "s" Then $iTimeVal = $iTimeVal + $iValToAdd
Local $Day2Add = Int($iTimeVal /(24 * 60 * 60))
$iTimeVal = $iTimeVal - $Day2Add * 24 * 60 * 60
If $iTimeVal < 0 Then
$Day2Add = $Day2Add - 1
$iTimeVal = $iTimeVal + 24 * 60 * 60
EndIf
$iJulianDate = _DateToDayValue($asDatePart[1], $asDatePart[2], $asDatePart[3]) + $Day2Add
_DayValueToDate($iJulianDate, $asDatePart[1], $asDatePart[2], $asDatePart[3])
_TicksToTime($iTimeVal * 1000, $asTimePart[1], $asTimePart[2], $asTimePart[3])
EndIf
Local $iNumDays = _DaysInMonth($asDatePart[1])
If $iNumDays[$asDatePart[2]] < $asDatePart[3] Then $asDatePart[3] = $iNumDays[$asDatePart[2]]
$sDate = $asDatePart[1] & '/' & StringRight("0" & $asDatePart[2], 2) & '/' & StringRight("0" & $asDatePart[3], 2)
If $asTimePart[0] > 0 Then
If $asTimePart[0] > 2 Then
$sDate = $sDate & " " & StringRight("0" & $asTimePart[1], 2) & ':' & StringRight("0" & $asTimePart[2], 2) & ':' & StringRight("0" & $asTimePart[3], 2)
Else
$sDate = $sDate & " " & StringRight("0" & $asTimePart[1], 2) & ':' & StringRight("0" & $asTimePart[2], 2)
EndIf
EndIf
Return($sDate)
EndFunc
Func _DateIsLeapYear($iYear)
If StringIsInt($iYear) Then
Select
Case Mod($iYear, 4) = 0 And Mod($iYear, 100) <> 0
Return 1
Case Mod($iYear, 400) = 0
Return 1
Case Else
Return 0
EndSelect
EndIf
Return SetError(1,0,0)
EndFunc
Func _DateIsValid($sDate)
Local $asDatePart[4], $asTimePart[4]
Local $sDateTime = StringSplit($sDate, " T")
If $sDateTime[0] > 0 Then $asDatePart = StringSplit($sDateTime[1], "/-.")
If UBound($asDatePart) <> 4 Then Return(0)
If $asDatePart[0] <> 3 Then Return(0)
If Not StringIsInt($asDatePart[1]) Then Return(0)
If Not StringIsInt($asDatePart[2]) Then Return(0)
If Not StringIsInt($asDatePart[3]) Then Return(0)
$asDatePart[1] = Number($asDatePart[1])
$asDatePart[2] = Number($asDatePart[2])
$asDatePart[3] = Number($asDatePart[3])
Local $iNumDays = _DaysInMonth($asDatePart[1])
If $asDatePart[1] < 1000 Or $asDatePart[1] > 2999 Then Return(0)
If $asDatePart[2] < 1 Or $asDatePart[2] > 12 Then Return(0)
If $asDatePart[3] < 1 Or $asDatePart[3] > $iNumDays[$asDatePart[2]] Then Return(0)
If $sDateTime[0] > 1 Then
$asTimePart = StringSplit($sDateTime[2], ":")
If UBound($asTimePart) < 4 Then ReDim $asTimePart[4]
Else
Dim $asTimePart[4]
EndIf
If $asTimePart[0] < 1 Then Return(1)
If $asTimePart[0] < 2 Then Return(0)
If $asTimePart[0] = 2 Then $asTimePart[3] = "00"
If Not StringIsInt($asTimePart[1]) Then Return(0)
If Not StringIsInt($asTimePart[2]) Then Return(0)
If Not StringIsInt($asTimePart[3]) Then Return(0)
$asTimePart[1] = Number($asTimePart[1])
$asTimePart[2] = Number($asTimePart[2])
$asTimePart[3] = Number($asTimePart[3])
If $asTimePart[1] < 0 Or $asTimePart[1] > 23 Then Return(0)
If $asTimePart[2] < 0 Or $asTimePart[2] > 59 Then Return(0)
If $asTimePart[3] < 0 Or $asTimePart[3] > 59 Then Return(0)
Return 1
EndFunc
Func _DateTimeSplit($sDate, ByRef $asDatePart, ByRef $iTimePart)
Local $sDateTime = StringSplit($sDate, " T")
If $sDateTime[0] > 0 Then $asDatePart = StringSplit($sDateTime[1], "/-.")
If $sDateTime[0] > 1 Then
$iTimePart = StringSplit($sDateTime[2], ":")
If UBound($iTimePart) < 4 Then ReDim $iTimePart[4]
Else
Dim $iTimePart[4]
EndIf
If UBound($asDatePart) < 4 Then ReDim $asDatePart[4]
For $x = 1 To 3
If StringIsInt($asDatePart[$x]) Then
$asDatePart[$x] = Number($asDatePart[$x])
Else
$asDatePart[$x] = -1
EndIf
If StringIsInt($iTimePart[$x]) Then
$iTimePart[$x] = Number($iTimePart[$x])
Else
$iTimePart[$x] = 0
EndIf
Next
Return 1
EndFunc
Func _DateToDayValue($iYear, $iMonth, $iDay)
If Not _DateIsValid(StringFormat("%04d/%02d/%02d", $iYear, $iMonth, $iDay)) Then
Return SetError(1,0,"")
EndIf
If $iMonth < 3 Then
$iMonth = $iMonth + 12
$iYear = $iYear - 1
EndIf
Local $i_aFactor = Int($iYear / 100)
Local $i_bFactor = Int($i_aFactor / 4)
Local $i_cFactor = 2 - $i_aFactor + $i_bFactor
Local $i_eFactor = Int(1461 *($iYear + 4716) / 4)
Local $i_fFactor = Int(153 *($iMonth + 1) / 5)
Local $iJulianDate = $i_cFactor + $iDay + $i_eFactor + $i_fFactor - 1524.5
Return($iJulianDate)
EndFunc
Func _DayValueToDate($iJulianDate, ByRef $iYear, ByRef $iMonth, ByRef $iDay)
If $iJulianDate < 0 Or Not IsNumber($iJulianDate) Then
Return SetError(1,0,0)
EndIf
Local $i_zFactor = Int($iJulianDate + 0.5)
Local $i_wFactor = Int(($i_zFactor - 1867216.25) / 36524.25)
Local $i_xFactor = Int($i_wFactor / 4)
Local $i_aFactor = $i_zFactor + 1 + $i_wFactor - $i_xFactor
Local $i_bFactor = $i_aFactor + 1524
Local $i_cFactor = Int(($i_bFactor - 122.1) / 365.25)
Local $i_dFactor = Int(365.25 * $i_cFactor)
Local $i_eFactor = Int(($i_bFactor - $i_dFactor) / 30.6001)
Local $i_fFactor = Int(30.6001 * $i_eFactor)
$iDay = $i_bFactor - $i_dFactor - $i_fFactor
If $i_eFactor - 1 < 13 Then
$iMonth = $i_eFactor - 1
Else
$iMonth = $i_eFactor - 13
EndIf
If $iMonth < 3 Then
$iYear = $i_cFactor - 4715
Else
$iYear = $i_cFactor - 4716
EndIf
$iYear = StringFormat("%04d", $iYear)
$iMonth = StringFormat("%02d", $iMonth)
$iDay = StringFormat("%02d", $iDay)
Return $iYear & "/" & $iMonth & "/" & $iDay
EndFunc
Func _NowCalc()
Return(@YEAR & "/" & @MON & "/" & @MDAY & " " & @HOUR & ":" & @MIN & ":" & @SEC)
EndFunc
Func _TicksToTime($iTicks, ByRef $iHours, ByRef $iMins, ByRef $iSecs)
If Number($iTicks) > 0 Then
$iTicks = Int($iTicks / 1000)
$iHours = Int($iTicks / 3600)
$iTicks = Mod($iTicks, 3600)
$iMins = Int($iTicks / 60)
$iSecs = Mod($iTicks, 60)
Return 1
ElseIf Number($iTicks) = 0 Then
$iHours = 0
$iTicks = 0
$iMins = 0
$iSecs = 0
Return 1
Else
Return SetError(1,0,0)
EndIf
EndFunc
Func _TimeToTicks($iHours = @HOUR, $iMins = @MIN, $iSecs = @SEC)
If StringIsInt($iHours) And StringIsInt($iMins) And StringIsInt($iSecs) Then
Local $iTicks = 1000 *((3600 * $iHours) +(60 * $iMins) + $iSecs)
Return $iTicks
Else
Return SetError(1,0,0)
EndIf
EndFunc
Func _DaysInMonth($iYear)
Local $aiDays[13] = [ 0, 31,28,31,30,31,30,31,31,30,31,30,31]
If _DateIsLeapYear($iYear) Then $aiDays[2] = 29
Return $aiDays
EndFunc
Global $__Binary_Kernel32Dll = DllOpen("kernel32.dll")
Global $__Binary_User32Dll = DllOpen("user32.dll")
Global $__Binary_MsvcrtDll = DllOpen("msvcrt.dll")
Global Const $__WINVER = __Ver()
Global Const $__UDFVER = '3.5'
Global Const $tagBITMAP = 'long bmType;long bmWidth;long bmHeight;long bmWidthBytes;ushort bmPlanes;ushort bmBitsPixel;ptr bmBits;'
Global Const $tagBITMAPINFOHEADER = 'dword biSize;long biWidth;long biHeight;ushort biPlanes;ushort biBitCount;dword biCompression;dword biSizeImage;long biXPelsPerMeter;long biYPelsPerMeter;dword biClrUsed;dword biClrImportant;'
Global Const $tagBITMAPV4HEADER = 'dword bV4Size;long bV4Width;long bV4Height;ushort bV4Planes;ushort bV4BitCount;dword bV4Compression;dword bV4SizeImage;long bV4XPelsPerMeter;long bV4YPelsPerMeter;dword bV4ClrUsed;dword bV4ClrImportant;dword bV4RedMask;dword bV4GreenMask;dword bV4BlueMask;dword bV4AlphaMask;dword bV4CSType;int bV4Endpoints[3];dword bV4GammaRed;dword bV4GammaGreen;dword bV4GammaBlue;'
Global Const $tagBITMAPV5HEADER = 'dword bV5Size;long bV5Width;long bV5Height;ushort bV5Planes;ushort bV5BitCount;dword bV5Compression;dword bV5SizeImage;long bV5XPelsPerMeter;long bV5YPelsPerMeter;dword bV5ClrUsed;dword bV5ClrImportant;dword bV5RedMask;dword bV5GreenMask;dword bV5BlueMask;dword bV5AlphaMask;dword bV5CSType;int bV5Endpoints[3];dword bV5GammaRed;dword bV5GammaGreen;dword bV5GammaBlue;dword bV5Intent;dword bV5ProfileData;dword bV5ProfileSize;dword bV5Reserved;'
Global Const $tagDEVMODE_DISPLAY = 'wchar DeviceName[32];ushort SpecVersion;ushort DriverVersion;ushort Size;ushort DriverExtra;dword Fields;' & $tagPOINT & ';dword DisplayOrientation;dword DisplayFixedOutput;short[5];wchar[32];ushort LogPixels;dword BitsPerPel;dword PelsWidth;dword PelsHeight;dword DisplayFlags;dword DisplayFrequency;'
Global Const $tagDEVMODE_PRINTER = 'wchar DeviceName[32];ushort SpecVersion;ushort DriverVersion;ushort Size;ushort DriverExtra;dword Fields;short Orientation;short PaperSize;short PaperLength;short PaperWidth;short Scale;short Copies;short DefaultSource;short PrintQuality;short Color;short Duplex;short YResolution;short TTOption;short Collate;wchar FormName[32];ushort;dword[3];dword Nup;dword;dword ICMMethod;dword ICMIntent;dword MediaType;dword DitherType;dword Reserved1;dword Reserved2;dword PanningWidth;dword PanningHeight;'
Global Const $tagDEVNAMES = 'ushort DriverOffset;ushort DeviceOffset;ushort OutputOffset;ushort Default;'
Global Const $tagDIBSECTION = $tagBITMAP & $tagBITMAPINFOHEADER & 'dword dsBitfields[3];ptr dshSection;dword dsOffset;'
Global Const $tagDTTOPTS = 'dword Size;dword Flags;dword clrText;dword clrBorder;dword clrShadow;int TextShadowType;' & $tagPOINT & ';int BorderSize;int FontPropId;int ColorPropId;int StateId;int ApplyOverlay;int GlowSize;ptr DrawTextCallback;lparam lParam;'
Global Const $tagENHMETAHEADER = 'dword Type;dword Size;long rcBounds[4];long rcFrame[4];dword Signature;dword Version;dword Bytes;dword Records;ushort Handles;ushort Reserved;dword Description;dword OffDescription;dword PalEntries;long Device[2];long Millimeters[2];dword PixelFormat;dword OffPixelFormat;dword OpenGL;long Micrometers[2];'
Global Const $tagEXTLOGPEN = 'dword PenStyle;dword Width;uint BrushStyle;dword Color;ulong_ptr Hatch;dword NumEntries;'
Global Const $tagFINDREPLACE = 'dword Size;hwnd hOwner;ptr hInstance;dword Flags;ptr FindWhat;ptr ReplaceWith;ushort FindWhatLen;ushort ReplaceWithLen;lparam lParam;ptr Hook;ptr TemplateName;'
Global Const $tagIO_COUNTERS = 'uint64 ReadOperationCount;uint64 WriteOperationCount;uint64 OtherOperationCount;uint64 ReadTransferCount;uint64 WriteTransferCount;uint64 OtherTransferCount;'
Global Const $tagJOBOBJECT_ASSOCIATE_COMPLETION_PORT = 'ulong_ptr CompletionKey;ptr CompletionPort;'
Global Const $tagJOBOBJECT_BASIC_ACCOUNTING_INFORMATION = 'int64 TotalUserTime;int64 TotalKernelTime;int64 ThisPeriodTotalUserTime;int64 ThisPeriodTotalKernelTime;dword TotalPageFaultCount;dword TotalProcesses;dword ActiveProcesses;dword TotalTerminatedProcesses;'
Global Const $tagJOBOBJECT_BASIC_AND_IO_ACCOUNTING_INFORMATION = $tagJOBOBJECT_BASIC_ACCOUNTING_INFORMATION & $tagIO_COUNTERS
Global Const $tagJOBOBJECT_BASIC_LIMIT_INFORMATION = 'int64 PerProcessUserTimeLimit;int64 PerJobUserTimeLimit;dword LimitFlags;ulong_ptr MinimumWorkingSetSize;ulong_ptr MaximumWorkingSetSize;dword ActiveProcessLimit;ulong_ptr Affinity;dword PriorityClass;dword SchedulingClass;'
Global Const $tagJOBOBJECT_BASIC_PROCESS_ID_LIST = 'dword NumberOfAssignedProcesses;dword NumberOfProcessIdsInList;'
Global Const $tagJOBOBJECT_BASIC_UI_RESTRICTIONS = 'dword UIRestrictionsClass;'
Global Const $tagJOBOBJECT_END_OF_JOB_TIME_INFORMATION = 'dword EndOfJobTimeAction;'
Global Const $tagJOBOBJECT_EXTENDED_LIMIT_INFORMATION = $tagJOBOBJECT_BASIC_LIMIT_INFORMATION & $tagIO_COUNTERS & 'ulong_ptr ProcessMemoryLimit;ulong_ptr JobMemoryLimit;ulong_ptr PeakProcessMemoryUsed;ulong_ptr PeakJobMemoryUsed;'
Global Const $tagJOBOBJECT_GROUP_INFORMATION = ''
Global Const $tagJOBOBJECT_SECURITY_LIMIT_INFORMATION = 'dword SecurityLimitFlags;ptr JobToken;ptr SidsToDisable;ptr PrivilegesToDelete;ptr RestrictedSids;'
Global Const $tagLOGBRUSH = 'uint Style;dword Color;ulong_ptr Hatch;'
Global Const $tagLOGPEN = 'uint Style;dword Width;dword Color;'
Global Const $tagMODULEINFO = 'ptr BaseOfDll;dword SizeOfImage;ptr EntryPoint;'
Global Const $tagMSGBOXPARAMS = 'uint Size;hwnd hOwner;ptr hInstance;int_ptr Text;int_ptr Caption;dword Style;int_ptr Icon;dword_ptr ContextHelpId;ptr MsgBoxCallback;dword LanguageId;'
Global Const $tagNOTIFYICONDATA = 'dword Size;hwnd hWnd;uint ID;uint Flags;uint CallbackMessage;ptr hIcon;wchar Tip[128];dword State;dword StateMask;wchar Info[256];uint Version;wchar InfoTitle[64];dword InfoFlags;'
Global Const $tagNOTIFYICONDATA_V3 = $tagNOTIFYICONDATA & $tagGUID & ';'
Global Const $tagNOTIFYICONDATA_V4 = $tagNOTIFYICONDATA_V3 & 'ptr hBalloonIcon;'
Global Const $tagNUMBERFMT = 'uint NumDigits;uint LeadingZero;uint Grouping;ptr DecimalSep;ptr ThousandSep;uint NegativeOrder;'
Global Const $tagOSVERSIONINFO = 'dword OSVersionInfoSize;dword MajorVersion;dword MinorVersion;dword BuildNumber;dword PlatformId;wchar CSDVersion[128];'
Global Const $tagOSVERSIONINFOEX = $tagOSVERSIONINFO & 'ushort ServicePackMajor;ushort ServicePackMinor;ushort SuiteMask;byte ProductType;byte Reserved;'
Global Const $tagPAGESETUPDLG = 'dword Size;hwnd hOwner;ptr hDevMode;ptr hDevNames;dword Flags;long PaperWidth;long PaperHeight;long MarginMinLeft;long MarginMinTop;long MarginMinRight;long MarginMinBottom;long MarginLeft;long MarginTop;long MarginRight;long MarginBottom;ptr hInstance;lparam lParam;ptr PageSetupHook;ptr PagePaintHook;ptr PageSetupTemplateName;ptr hPageSetupTemplate;'
Global Const $tagPAINTSTRUCT = 'hwnd hDC;int fErase;dword rPaint[4];int fRestore;int fIncUpdate;byte rgbReserved[32];'
Global Const $tagPANOSE = 'byte bFamilyType;byte bSerifStyle;byte bWeight;byte bProportion;byte bContrast;byte bStrokeVariation;byte bArmStyle;byte bLetterform;byte bMidline;byte bXHeight;'
Global Const $tagPRINTDLG = 'align 2;dword_ptr Size;hwnd hOwner;ptr hDevMode;ptr hDevNames;hwnd hDC;dword Flags;ushort FromPage;ushort ToPage;ushort MinPage;ushort MaxPage;' & __Iif(@AutoItX64, 'uint', 'ushort') & ' Copies;ptr hInstance;lparam lParam;ptr PrintHook;ptr SetupHook;ptr PrintTemplateName;ptr SetupTemplateName;ptr hPrintTemplate;ptr hSetupTemplate;'
Global Const $tagPRINTDLGEX = 'dword Size;hwnd hOwner;ptr hDevMode;ptr hDevNames;hwnd hDC;dword Flags;dword Flags2;dword ExclusionFlags;dword NumPageRanges;dword MaxPageRanges;ptr PageRanges;dword MinPage;dword MaxPage;dword Copies;ptr hInstance;ptr PrintTemplateName;lparam lParam;dword NumPropertyPages;ptr hPropertyPages;dword StartPage;dword ResultAction;'
Global Const $tagPRINTPAGERANGE = 'dword FromPage;dword ToPage;'
Global Const $tagRGNDATAHEADER = 'dword Size;dword Type;dword Count;dword RgnSize;' & $tagRECT & ';'
Global Const $tagSHFILEINFO = 'ptr hIcon;int iIcon;dword Attributes;wchar DisplayName[260];wchar TypeName[80];'
Global Const $tagSHFILEOPSTRUCT = 'hwnd hWnd;uint Func;ptr From;ptr To;dword Flags;int fAnyOperationsAborted;ptr hNameMappings;ptr ProgressTitle;'
Global Const $tagSHFOLDERCUSTOMSETTINGS = 'dword Size;dword Mask;ptr GUID;ptr WebViewTemplate;dword SizeWVT;ptr WebViewTemplateVersion;ptr InfoTip;dword SizeIT;ptr CLSID;dword Flags;ptr IconFile;dword SizeIF;int IconIndex;ptr Logo;dword SizeL;'
Global Const $tagSHSTOCKICONINFO = 'dword Size;ptr hIcon;int SysImageIndex;int iIcon;wchar Path[260];'
Global Const $tagUSEROBJECTFLAGS = 'int Inherit;int Reserved;dword Flags;'
Global Const $tagVS_FIXEDFILEINFO = 'dword Signature;dword StrucVersion;dword FileVersionMS;dword FileVersionLS;dword ProductVersionMS;dword ProductVersionLS;dword FileFlagsMask;dword FileFlags;dword FileOS;dword FileType;dword FileSubtype;dword FileDateMS;dword FileDateLS;'
Global Const $tagWINDOWINFO = 'dword Size;dword rWindow[4];dword rClient[4];dword Style;dword ExStyle;dword WindowStatus;uint cxWindowBorders;uint cyWindowBorders;ushort atomWindowType;ushort CreatorVersion;'
Global Const $tagWNDCLASSEX = 'uint Size;uint Style;ptr hWndProc;int ClsExtra;int WndExtra;ptr hInstance;ptr hIcon;ptr hCursor;ptr hBackground;ptr MenuName;ptr ClassName;ptr hIconSm;'
Global Const $tagXFORM = 'float eM11;float eM12;float eM21;float eM22;float eDx;float eDy;'
Global $__Data, $__Dlg, $__Dll = 0, $__Ext = 0, $__Heap = 0, $__Text = 0, $__FR, $__Buff = 16385, $__RGB = True
Func __Iif($fTest, $iTrue, $iFalse)
If $fTest Then
Return $iTrue
Else
Return $iFalse
EndIf
EndFunc
Func __Ver()
Local $tOSVI, $Ret
$tOSVI = DllStructCreate('dword Size;dword MajorVersion;dword MinorVersion;dword BuildNumber;dword PlatformId;wchar CSDVersion[128]')
DllStructSetData($tOSVI, 'Size', DllStructGetSize($tOSVI))
$Ret = DllCall('kernel32.dll', 'int', 'GetVersionExW', 'ptr', DllStructGetPtr($tOSVI))
If(@error) Or(Not $Ret[0]) Then
Return SetError(1, 0, 0)
EndIf
Return BitOR(BitShift(DllStructGetData($tOSVI, 'MajorVersion'), -8), DllStructGetData($tOSVI, 'MinorVersion'))
EndFunc
Global Const $GDIP_DASHCAPFLAT = 0
Global Const $GDIP_DASHCAPROUND = 2
Global Const $GDIP_DASHCAPTRIANGLE = 3
Global Const $GDIP_DASHSTYLESOLID = 0
Global Const $GDIP_DASHSTYLEDASH = 1
Global Const $GDIP_DASHSTYLEDOT = 2
Global Const $GDIP_DASHSTYLEDASHDOT = 3
Global Const $GDIP_DASHSTYLEDASHDOTDOT = 4
Global Const $GDIP_DASHSTYLECUSTOM = 5
Global Const $GDIP_EPGCHROMINANCETABLE = '{F2E455DC-09B3-4316-8260-676ADA32481C}'
Global Const $GDIP_EPGCOLORDEPTH = '{66087055-AD66-4C7C-9A18-38A2310B8337}'
Global Const $GDIP_EPGCOMPRESSION = '{E09D739D-CCD4-44EE-8EBA-3FBF8BE4FC58}'
Global Const $GDIP_EPGLUMINANCETABLE = '{EDB33BCE-0266-4A77-B904-27216099E717}'
Global Const $GDIP_EPGQUALITY = '{1D5BE4B5-FA4A-452D-9CDD-5DB35105E7EB}'
Global Const $GDIP_EPGRENDERMETHOD = '{6D42C53A-229A-4825-8BB7-5C99E2B9A8B8}'
Global Const $GDIP_EPGSAVEFLAG = '{292266FC-AC40-47BF-8CFC-A85B89A655DE}'
Global Const $GDIP_EPGSCANMETHOD = '{3A4E2661-3109-4E56-8536-42C156E7DCFA}'
Global Const $GDIP_EPGTRANSFORMATION = '{8D0EB2D1-A58E-4EA8-AA14-108074B7B6F9}'
Global Const $GDIP_EPGVERSION = '{24D18C76-814A-41A4-BF53-1C219CCCF797}'
Global Const $GDIP_EPTBYTE = 1
Global Const $GDIP_EPTASCII = 2
Global Const $GDIP_EPTSHORT = 3
Global Const $GDIP_EPTLONG = 4
Global Const $GDIP_EPTRATIONAL = 5
Global Const $GDIP_EPTLONGRANGE = 6
Global Const $GDIP_EPTUNDEFINED = 7
Global Const $GDIP_EPTRATIONALRANGE = 8
Global Const $GDIP_ERROK = 0
Global Const $GDIP_ERRGENERICERROR = 1
Global Const $GDIP_ERRINVALIDPARAMETER = 2
Global Const $GDIP_ERROUTOFMEMORY = 3
Global Const $GDIP_ERROBJECTBUSY = 4
Global Const $GDIP_ERRINSUFFICIENTBUFFER = 5
Global Const $GDIP_ERRNOTIMPLEMENTED = 6
Global Const $GDIP_ERRWIN32ERROR = 7
Global Const $GDIP_ERRWRONGSTATE = 8
Global Const $GDIP_ERRABORTED = 9
Global Const $GDIP_ERRFILENOTFOUND = 10
Global Const $GDIP_ERRVALUEOVERFLOW = 11
Global Const $GDIP_ERRACCESSDENIED = 12
Global Const $GDIP_ERRUNKNOWNIMAGEFORMAT = 13
Global Const $GDIP_ERRFONTFAMILYNOTFOUND = 14
Global Const $GDIP_ERRFONTSTYLENOTFOUND = 15
Global Const $GDIP_ERRNOTTRUETYPEFONT = 16
Global Const $GDIP_ERRUNSUPPORTEDGDIVERSION = 17
Global Const $GDIP_ERRGDIPLUSNOTINITIALIZED = 18
Global Const $GDIP_ERRPROPERTYNOTFOUND = 19
Global Const $GDIP_ERRPROPERTYNOTSUPPORTED = 20
Global Const $GDIP_EVTCOMPRESSIONLZW = 2
Global Const $GDIP_EVTCOMPRESSIONCCITT3 = 3
Global Const $GDIP_EVTCOMPRESSIONCCITT4 = 4
Global Const $GDIP_EVTCOMPRESSIONRLE = 5
Global Const $GDIP_EVTCOMPRESSIONNONE = 6
Global Const $GDIP_EVTTRANSFORMROTATE90 = 13
Global Const $GDIP_EVTTRANSFORMROTATE180 = 14
Global Const $GDIP_EVTTRANSFORMROTATE270 = 15
Global Const $GDIP_EVTTRANSFORMFLIPHORIZONTAL = 16
Global Const $GDIP_EVTTRANSFORMFLIPVERTICAL = 17
Global Const $GDIP_EVTMULTIFRAME = 18
Global Const $GDIP_EVTLASTFRAME = 19
Global Const $GDIP_EVTFLUSH = 20
Global Const $GDIP_EVTFRAMEDIMENSIONPAGE = 23
Global Const $GDIP_ICFENCODER = 0x00000001
Global Const $GDIP_ICFDECODER = 0x00000002
Global Const $GDIP_ICFSUPPORTBITMAP = 0x00000004
Global Const $GDIP_ICFSUPPORTVECTOR = 0x00000008
Global Const $GDIP_ICFSEEKABLEENCODE = 0x00000010
Global Const $GDIP_ICFBLOCKINGDECODE = 0x00000020
Global Const $GDIP_ICFBUILTIN = 0x00010000
Global Const $GDIP_ICFSYSTEM = 0x00020000
Global Const $GDIP_ICFUSER = 0x00040000
Global Const $GDIP_ILMREAD = 0x0001
Global Const $GDIP_ILMWRITE = 0x0002
Global Const $GDIP_ILMUSERINPUTBUF = 0x0004
Global Const $GDIP_LINECAPFLAT = 0x00
Global Const $GDIP_LINECAPSQUARE = 0x01
Global Const $GDIP_LINECAPROUND = 0x02
Global Const $GDIP_LINECAPTRIANGLE = 0x03
Global Const $GDIP_LINECAPNOANCHOR = 0x10
Global Const $GDIP_LINECAPSQUAREANCHOR = 0x11
Global Const $GDIP_LINECAPROUNDANCHOR = 0x12
Global Const $GDIP_LINECAPDIAMONDANCHOR = 0x13
Global Const $GDIP_LINECAPARROWANCHOR = 0x14
Global Const $GDIP_LINECAPCUSTOM = 0xFF
Global Const $GDIP_PXF01INDEXED = 0x00030101
Global Const $GDIP_PXF04INDEXED = 0x00030402
Global Const $GDIP_PXF08INDEXED = 0x00030803
Global Const $GDIP_PXF16GRAYSCALE = 0x00101004
Global Const $GDIP_PXF16RGB555 = 0x00021005
Global Const $GDIP_PXF16RGB565 = 0x00021006
Global Const $GDIP_PXF16ARGB1555 = 0x00061007
Global Const $GDIP_PXF24RGB = 0x00021808
Global Const $GDIP_PXF32RGB = 0x00022009
Global Const $GDIP_PXF32ARGB = 0x0026200A
Global Const $GDIP_PXF32PARGB = 0x000D200B
Global Const $GDIP_PXF48RGB = 0x0010300C
Global Const $GDIP_PXF64ARGB = 0x0034400D
Global Const $GDIP_PXF64PARGB = 0x001C400E
Global Const $GDIP_IMAGEFORMAT_UNDEFINED = "{B96B3CA9-0728-11D3-9D7B-0000F81EF32E}"
Global Const $GDIP_IMAGEFORMAT_MEMORYBMP = "{B96B3CAA-0728-11D3-9D7B-0000F81EF32E}"
Global Const $GDIP_IMAGEFORMAT_BMP = "{B96B3CAB-0728-11D3-9D7B-0000F81EF32E}"
Global Const $GDIP_IMAGEFORMAT_EMF = "{B96B3CAC-0728-11D3-9D7B-0000F81EF32E}"
Global Const $GDIP_IMAGEFORMAT_WMF = "{B96B3CAD-0728-11D3-9D7B-0000F81EF32E}"
Global Const $GDIP_IMAGEFORMAT_JPEG = "{B96B3CAE-0728-11D3-9D7B-0000F81EF32E}"
Global Const $GDIP_IMAGEFORMAT_PNG = "{B96B3CAF-0728-11D3-9D7B-0000F81EF32E}"
Global Const $GDIP_IMAGEFORMAT_GIF = "{B96B3CB0-0728-11D3-9D7B-0000F81EF32E}"
Global Const $GDIP_IMAGEFORMAT_TIFF = "{B96B3CB1-0728-11D3-9D7B-0000F81EF32E}"
Global Const $GDIP_IMAGEFORMAT_EXIF = "{B96B3CB2-0728-11D3-9D7B-0000F81EF32E}"
Global Const $GDIP_IMAGEFORMAT_ICON = "{B96B3CB5-0728-11D3-9D7B-0000F81EF32E}"
Global Const $GDIP_IMAGETYPE_UNKNOWN = 0
Global Const $GDIP_IMAGETYPE_BITMAP = 1
Global Const $GDIP_IMAGETYPE_METAFILE = 2
Global Const $GDIP_IMAGEFLAGS_NONE = 0x0
Global Const $GDIP_IMAGEFLAGS_SCALABLE = 0x0001
Global Const $GDIP_IMAGEFLAGS_HASALPHA = 0x0002
Global Const $GDIP_IMAGEFLAGS_HASTRANSLUCENT = 0x0004
Global Const $GDIP_IMAGEFLAGS_PARTIALLYSCALABLE = 0x0008
Global Const $GDIP_IMAGEFLAGS_COLORSPACE_RGB = 0x0010
Global Const $GDIP_IMAGEFLAGS_COLORSPACE_CMYK = 0x0020
Global Const $GDIP_IMAGEFLAGS_COLORSPACE_GRAY = 0x0040
Global Const $GDIP_IMAGEFLAGS_COLORSPACE_YCBCR = 0x0080
Global Const $GDIP_IMAGEFLAGS_COLORSPACE_YCCK = 0x0100
Global Const $GDIP_IMAGEFLAGS_HASREALDPI = 0x1000
Global Const $GDIP_IMAGEFLAGS_HASREALPIXELSIZE = 0x2000
Global Const $GDIP_IMAGEFLAGS_READONLY = 0x00010000
Global Const $GDIP_IMAGEFLAGS_CACHING = 0x00020000
Global $ghGDIPBrush = 0
Global $ghGDIPDll = 0
Global $ghGDIPPen = 0
Global $giGDIPRef = 0
Global $giGDIPToken = 0
Global Const $WS_TILED = 0
Global Const $WS_OVERLAPPED = 0
Global Const $WS_MAXIMIZEBOX = 0x00010000
Global Const $WS_MINIMIZEBOX = 0x00020000
Global Const $WS_TABSTOP = 0x00010000
Global Const $WS_GROUP = 0x00020000
Global Const $WS_SIZEBOX = 0x00040000
Global Const $WS_THICKFRAME = 0x00040000
Global Const $WS_SYSMENU = 0x00080000
Global Const $WS_HSCROLL = 0x00100000
Global Const $WS_VSCROLL = 0x00200000
Global Const $WS_DLGFRAME = 0x00400000
Global Const $WS_BORDER = 0x00800000
Global Const $WS_CAPTION = 0x00C00000
Global Const $WS_OVERLAPPEDWINDOW = 0x00CF0000
Global Const $WS_TILEDWINDOW = 0x00CF0000
Global Const $WS_MAXIMIZE = 0x01000000
Global Const $WS_CLIPCHILDREN = 0x02000000
Global Const $WS_CLIPSIBLINGS = 0x04000000
Global Const $WS_DISABLED = 0x08000000
Global Const $WS_VISIBLE = 0x10000000
Global Const $WS_MINIMIZE = 0x20000000
Global Const $WS_CHILD = 0x40000000
Global Const $WS_POPUP = 0x80000000
Global Const $WS_POPUPWINDOW = 0x80880000
Global Const $DS_MODALFRAME = 0x80
Global Const $DS_SETFOREGROUND = 0x00000200
Global Const $DS_CONTEXTHELP = 0x00002000
Global Const $WS_EX_ACCEPTFILES = 0x00000010
Global Const $WS_EX_MDICHILD = 0x00000040
Global Const $WS_EX_APPWINDOW = 0x00040000
Global Const $WS_EX_COMPOSITED = 0x02000000
Global Const $WS_EX_CLIENTEDGE = 0x00000200
Global Const $WS_EX_CONTEXTHELP = 0x00000400
Global Const $WS_EX_DLGMODALFRAME = 0x00000001
Global Const $WS_EX_LEFTSCROLLBAR = 0x00004000
Global Const $WS_EX_OVERLAPPEDWINDOW = 0x00000300
Global Const $WS_EX_RIGHT = 0x00001000
Global Const $WS_EX_STATICEDGE = 0x00020000
Global Const $WS_EX_TOOLWINDOW = 0x00000080
Global Const $WS_EX_TOPMOST = 0x00000008
Global Const $WS_EX_TRANSPARENT = 0x00000020
Global Const $WS_EX_WINDOWEDGE = 0x00000100
Global Const $WS_EX_LAYERED = 0x00080000
Global Const $WS_EX_CONTROLPARENT = 0x10000
Global Const $WS_EX_LAYOUTRTL = 0x400000
Global Const $WS_EX_RTLREADING = 0x2000
Global Const $WM_GETTEXTLENGTH = 0x000E
Global Const $WM_GETTEXT = 0x000D
Global Const $WM_SIZE = 0x05
Global Const $WM_SIZING = 0x0214
Global Const $WM_USER = 0X400
Global Const $WM_CREATE = 0x0001
Global Const $WM_DESTROY = 0x0002
Global Const $WM_MOVE = 0x0003
Global Const $WM_ACTIVATE = 0x0006
Global Const $WM_SETFOCUS = 0x0007
Global Const $WM_KILLFOCUS = 0x0008
Global Const $WM_ENABLE = 0x000A
Global Const $WM_SETREDRAW = 0x000B
Global Const $WM_SETTEXT = 0x000C
Global Const $WM_PAINT = 0x000F
Global Const $WM_CLOSE = 0x0010
Global Const $WM_QUIT = 0x0012
Global Const $WM_ERASEBKGND = 0x0014
Global Const $WM_SYSCOLORCHANGE = 0x0015
Global Const $WM_SHOWWINDOW = 0x0018
Global Const $WM_WININICHANGE = 0x001A
Global Const $WM_DEVMODECHANGE = 0x001B
Global Const $WM_ACTIVATEAPP = 0x001C
Global Const $WM_FONTCHANGE = 0x001D
Global Const $WM_TIMECHANGE = 0x001E
Global Const $WM_CANCELMODE = 0x001F
Global Const $WM_SETCURSOR = 0x0020
Global Const $WM_MOUSEACTIVATE = 0x0021
Global Const $WM_CHILDACTIVATE = 0x0022
Global Const $WM_QUEUESYNC = 0x0023
Global Const $WM_GETMINMAXINFO = 0x0024
Global Const $WM_PAINTICON = 0x0026
Global Const $WM_ICONERASEBKGND = 0x0027
Global Const $WM_NEXTDLGCTL = 0x0028
Global Const $WM_SPOOLERSTATUS = 0x002A
Global Const $WM_DRAWITEM = 0x002B
Global Const $WM_MEASUREITEM = 0x002C
Global Const $WM_DELETEITEM = 0x002D
Global Const $WM_VKEYTOITEM = 0x002E
Global Const $WM_CHARTOITEM = 0x002F
Global Const $WM_SETFONT = 0x0030
Global Const $WM_GETFONT = 0x0031
Global Const $WM_SETHOTKEY = 0x0032
Global Const $WM_GETHOTKEY = 0x0033
Global Const $WM_QUERYDRAGICON = 0x0037
Global Const $WM_COMPAREITEM = 0x0039
Global Const $WM_GETOBJECT = 0x003D
Global Const $WM_COMPACTING = 0x0041
Global Const $WM_COMMNOTIFY = 0x0044
Global Const $WM_WINDOWPOSCHANGING = 0x0046
Global Const $WM_WINDOWPOSCHANGED = 0x0047
Global Const $WM_POWER = 0x0048
Global Const $WM_NOTIFY = 0x004E
Global Const $WM_COPYDATA = 0x004A
Global Const $WM_CANCELJOURNAL = 0x004B
Global Const $WM_INPUTLANGCHANGEREQUEST = 0x0050
Global Const $WM_INPUTLANGCHANGE = 0x0051
Global Const $WM_TCARD = 0x0052
Global Const $WM_HELP = 0x0053
Global Const $WM_USERCHANGED = 0x0054
Global Const $WM_NOTIFYFORMAT = 0x0055
Global Const $WM_CUT = 0x0300
Global Const $WM_COPY = 0x0301
Global Const $WM_PASTE = 0x0302
Global Const $WM_CLEAR = 0x0303
Global Const $WM_UNDO = 0x0304
Global Const $WM_CONTEXTMENU = 0x007B
Global Const $WM_STYLECHANGING = 0x007C
Global Const $WM_STYLECHANGED = 0x007D
Global Const $WM_DISPLAYCHANGE = 0x007E
Global Const $WM_GETICON = 0x007F
Global Const $WM_SETICON = 0x0080
Global Const $WM_NCCREATE = 0x0081
Global Const $WM_NCDESTROY = 0x0082
Global Const $WM_NCCALCSIZE = 0x0083
Global Const $WM_NCHITTEST = 0x0084
Global Const $WM_NCPAINT = 0x0085
Global Const $WM_NCACTIVATE = 0x0086
Global Const $WM_GETDLGCODE = 0x0087
Global Const $WM_SYNCPAINT = 0x0088
Global Const $WM_NCMOUSEMOVE = 0x00A0
Global Const $WM_NCLBUTTONDOWN = 0x00A1
Global Const $WM_NCLBUTTONUP = 0x00A2
Global Const $WM_NCLBUTTONDBLCLK = 0x00A3
Global Const $WM_NCRBUTTONDOWN = 0x00A4
Global Const $WM_NCRBUTTONUP = 0x00A5
Global Const $WM_NCRBUTTONDBLCLK = 0x00A6
Global Const $WM_NCMBUTTONDOWN = 0x00A7
Global Const $WM_NCMBUTTONUP = 0x00A8
Global Const $WM_NCMBUTTONDBLCLK = 0x00A9
Global Const $WM_KEYDOWN = 0x0100
Global Const $WM_KEYUP = 0x0101
Global Const $WM_CHAR = 0x0102
Global Const $WM_DEADCHAR = 0x0103
Global Const $WM_SYSKEYDOWN = 0x0104
Global Const $WM_SYSKEYUP = 0x0105
Global Const $WM_SYSCHAR = 0x0106
Global Const $WM_SYSDEADCHAR = 0x0107
Global Const $WM_INITDIALOG = 0x0110
Global Const $WM_COMMAND = 0x0111
Global Const $WM_SYSCOMMAND = 0x0112
Global Const $WM_TIMER = 0x0113
Global Const $WM_HSCROLL = 0x0114
Global Const $WM_VSCROLL = 0x0115
Global Const $WM_INITMENU = 0x0116
Global Const $WM_INITMENUPOPUP = 0x0117
Global Const $WM_MENUSELECT = 0x011F
Global Const $WM_MENUCHAR = 0x0120
Global Const $WM_ENTERIDLE = 0x0121
Global Const $WM_MENURBUTTONUP = 0x0122
Global Const $WM_MENUDRAG = 0x0123
Global Const $WM_MENUGETOBJECT = 0x0124
Global Const $WM_UNINITMENUPOPUP = 0x0125
Global Const $WM_MENUCOMMAND = 0x0126
Global Const $WM_CHANGEUISTATE = 0x0127
Global Const $WM_UPDATEUISTATE = 0x0128
Global Const $WM_QUERYUISTATE = 0x0129
Global Const $WM_CTLCOLORMSGBOX = 0x0132
Global Const $WM_CTLCOLOREDIT = 0x0133
Global Const $WM_CTLCOLORLISTBOX = 0x0134
Global Const $WM_CTLCOLORBTN = 0x0135
Global Const $WM_CTLCOLORDLG = 0x0136
Global Const $WM_CTLCOLORSCROLLBAR = 0x0137
Global Const $WM_CTLCOLORSTATIC = 0x0138
Global Const $WM_CTLCOLOR = 0x0019
Global Const $MN_GETHMENU = 0x01E1
Global Const $NM_FIRST = 0
Global Const $NM_OUTOFMEMORY = $NM_FIRST - 1
Global Const $NM_CLICK = $NM_FIRST - 2
Global Const $NM_DBLCLK = $NM_FIRST - 3
Global Const $NM_RETURN = $NM_FIRST - 4
Global Const $NM_RCLICK = $NM_FIRST - 5
Global Const $NM_RDBLCLK = $NM_FIRST - 6
Global Const $NM_SETFOCUS = $NM_FIRST - 7
Global Const $NM_KILLFOCUS = $NM_FIRST - 8
Global Const $NM_CUSTOMDRAW = $NM_FIRST - 12
Global Const $NM_HOVER = $NM_FIRST - 13
Global Const $NM_NCHITTEST = $NM_FIRST - 14
Global Const $NM_KEYDOWN = $NM_FIRST - 15
Global Const $NM_RELEASEDCAPTURE = $NM_FIRST - 16
Global Const $NM_SETCURSOR = $NM_FIRST - 17
Global Const $NM_CHAR = $NM_FIRST - 18
Global Const $NM_TOOLTIPSCREATED = $NM_FIRST - 19
Global Const $NM_LDOWN = $NM_FIRST - 20
Global Const $NM_RDOWN = $NM_FIRST - 21
Global Const $NM_THEMECHANGED = $NM_FIRST - 22
Global Const $WM_MOUSEMOVE = 0x0200
Global Const $WM_LBUTTONDOWN = 0x0201
Global Const $WM_LBUTTONUP = 0x0202
Global Const $WM_LBUTTONDBLCLK = 0x0203
Global Const $WM_RBUTTONDOWN = 0x0204
Global Const $WM_RBUTTONUP = 0x0205
Global Const $WM_RBUTTONDBLCK = 0x0206
Global Const $WM_MBUTTONDOWN = 0x0207
Global Const $WM_MBUTTONUP = 0x0208
Global Const $WM_MBUTTONDBLCK = 0x0209
Global Const $WM_MOUSEWHEEL = 0x020A
Global Const $WM_XBUTTONDOWN = 0x020B
Global Const $WM_XBUTTONUP = 0x020C
Global Const $WM_XBUTTONDBLCLK = 0x020D
Global Const $WM_MOUSEHWHEEL = 0x020E
Global Const $PS_SOLID = 0
Global Const $PS_DASH = 1
Global Const $PS_DOT = 2
Global Const $PS_DASHDOT = 3
Global Const $PS_DASHDOTDOT = 4
Global Const $PS_NULL = 5
Global Const $PS_INSIDEFRAME = 6
Global Const $LWA_ALPHA = 0x2
Global Const $LWA_COLORKEY = 0x1
Global Const $RGN_AND = 1
Global Const $RGN_OR = 2
Global Const $RGN_XOR = 3
Global Const $RGN_DIFF = 4
Global Const $RGN_COPY = 5
Global Const $ERRORREGION = 0
Global Const $NULLREGION = 1
Global Const $SIMPLEREGION = 2
Global Const $COMPLEXREGION = 3
Global Const $TRANSPARENT = 1
Global Const $OPAQUE = 2
Global Const $CCM_FIRST = 0x2000
Global Const $CCM_GETUNICODEFORMAT =($CCM_FIRST + 6)
Global Const $CCM_SETUNICODEFORMAT =($CCM_FIRST + 5)
Global Const $CCM_SETBKCOLOR = $CCM_FIRST + 1
Global Const $CCM_SETCOLORSCHEME = $CCM_FIRST + 2
Global Const $CCM_GETCOLORSCHEME = $CCM_FIRST + 3
Global Const $CCM_GETDROPTARGET = $CCM_FIRST + 4
Global Const $CCM_SETWINDOWTHEME = $CCM_FIRST + 11
Global Const $GA_PARENT = 1
Global Const $GA_ROOT = 2
Global Const $GA_ROOTOWNER = 3
Global Const $SM_CXSCREEN = 0
Global Const $SM_CYSCREEN = 1
Global Const $SM_CXVSCROLL = 2
Global Const $SM_CYHSCROLL = 3
Global Const $SM_CYCAPTION = 4
Global Const $SM_CXBORDER = 5
Global Const $SM_CYBORDER = 6
Global Const $SM_CXDLGFRAME = 7
Global Const $SM_CYDLGFRAME = 8
Global Const $SM_CYVTHUMB = 9
Global Const $SM_CXHTHUMB = 10
Global Const $SM_CXICON = 11
Global Const $SM_CYICON = 12
Global Const $SM_CXCURSOR = 13
Global Const $SM_CYCURSOR = 14
Global Const $SM_CYMENU = 15
Global Const $SM_CXFULLSCREEN = 16
Global Const $SM_CYFULLSCREEN = 17
Global Const $SM_CYKANJIWINDOW = 18
Global Const $SM_MOUSEPRESENT = 19
Global Const $SM_CYVSCROLL = 20
Global Const $SM_CXHSCROLL = 21
Global Const $SM_DEBUG = 22
Global Const $SM_SWAPBUTTON = 23
Global Const $SM_RESERVED1 = 24
Global Const $SM_RESERVED2 = 25
Global Const $SM_RESERVED3 = 26
Global Const $SM_RESERVED4 = 27
Global Const $SM_CXMIN = 28
Global Const $SM_CYMIN = 29
Global Const $SM_CXSIZE = 30
Global Const $SM_CYSIZE = 31
Global Const $SM_CXFRAME = 32
Global Const $SM_CYFRAME = 33
Global Const $SM_CXMINTRACK = 34
Global Const $SM_CYMINTRACK = 35
Global Const $SM_CXDOUBLECLK = 36
Global Const $SM_CYDOUBLECLK = 37
Global Const $SM_CXICONSPACING = 38
Global Const $SM_CYICONSPACING = 39
Global Const $SM_MENUDROPALIGNMENT = 40
Global Const $SM_PENWINDOWS = 41
Global Const $SM_DBCSENABLED = 42
Global Const $SM_CMOUSEBUTTONS = 43
Global Const $SM_SECURE = 44
Global Const $SM_CXEDGE = 45
Global Const $SM_CYEDGE = 46
Global Const $SM_CXMINSPACING = 47
Global Const $SM_CYMINSPACING = 48
Global Const $SM_CXSMICON = 49
Global Const $SM_CYSMICON = 50
Global Const $SM_CYSMCAPTION = 51
Global Const $SM_CXSMSIZE = 52
Global Const $SM_CYSMSIZE = 53
Global Const $SM_CXMENUSIZE = 54
Global Const $SM_CYMENUSIZE = 55
Global Const $SM_ARRANGE = 56
Global Const $SM_CXMINIMIZED = 57
Global Const $SM_CYMINIMIZED = 58
Global Const $SM_CXMAXTRACK = 59
Global Const $SM_CYMAXTRACK = 60
Global Const $SM_CXMAXIMIZED = 61
Global Const $SM_CYMAXIMIZED = 62
Global Const $SM_NETWORK = 63
Global Const $SM_CLEANBOOT = 67
Global Const $SM_CXDRAG = 68
Global Const $SM_CYDRAG = 69
Global Const $SM_SHOWSOUNDS = 70
Global Const $SM_CXMENUCHECK = 71
Global Const $SM_CYMENUCHECK = 72
Global Const $SM_SLOWMACHINE = 73
Global Const $SM_MIDEASTENABLED = 74
Global Const $SM_MOUSEWHEELPRESENT = 75
Global Const $SM_XVIRTUALSCREEN = 76
Global Const $SM_YVIRTUALSCREEN = 77
Global Const $SM_CXVIRTUALSCREEN = 78
Global Const $SM_CYVIRTUALSCREEN = 79
Global Const $SM_CMONITORS = 80
Global Const $SM_SAMEDISPLAYFORMAT = 81
Global Const $SM_IMMENABLED = 82
Global Const $SM_CXFOCUSBORDER = 83
Global Const $SM_CYFOCUSBORDER = 84
Global Const $SM_TABLETPC = 86
Global Const $SM_MEDIACENTER = 87
Global Const $SM_STARTER = 88
Global Const $SM_SERVERR2 = 89
Global Const $SM_CMETRICS = 90
Global Const $SM_REMOTESESSION = 0x1000
Global Const $SM_SHUTTINGDOWN = 0x2000
Global Const $SM_REMOTECONTROL = 0x2001
Global Const $SM_CARETBLINKINGENABLED = 0x2002
Global Const $BLACKNESS = 0x00000042
Global Const $CAPTUREBLT = 0X40000000
Global Const $DSTINVERT = 0x00550009
Global Const $MERGECOPY = 0x00C000CA
Global Const $MERGEPAINT = 0x00BB0226
Global Const $NOMIRRORBITMAP = 0X80000000
Global Const $NOTSRCCOPY = 0x00330008
Global Const $NOTSRCERASE = 0x001100A6
Global Const $PATCOPY = 0x00F00021
Global Const $PATINVERT = 0x005A0049
Global Const $PATPAINT = 0x00FB0A09
Global Const $SRCAND = 0x008800C6
Global Const $SRCCOPY = 0x00CC0020
Global Const $SRCERASE = 0x00440328
Global Const $SRCINVERT = 0x00660046
Global Const $SRCPAINT = 0x00EE0086
Global Const $WHITENESS = 0x00FF0062
Global Const $DT_BOTTOM = 0x8
Global Const $DT_CALCRECT = 0x400
Global Const $DT_CENTER = 0x1
Global Const $DT_EDITCONTROL = 0x2000
Global Const $DT_END_ELLIPSIS = 0x8000
Global Const $DT_EXPANDTABS = 0x40
Global Const $DT_EXTERNALLEADING = 0x200
Global Const $DT_HIDEPREFIX = 0x100000
Global Const $DT_INTERNAL = 0x1000
Global Const $DT_LEFT = 0x0
Global Const $DT_MODIFYSTRING = 0x10000
Global Const $DT_NOCLIP = 0x100
Global Const $DT_NOFULLWIDTHCHARBREAK = 0x80000
Global Const $DT_NOPREFIX = 0x800
Global Const $DT_PATH_ELLIPSIS = 0x4000
Global Const $DT_PREFIXONLY = 0x200000
Global Const $DT_RIGHT = 0x2
Global Const $DT_RTLREADING = 0x20000
Global Const $DT_SINGLELINE = 0x20
Global Const $DT_TABSTOP = 0x80
Global Const $DT_TOP = 0x0
Global Const $DT_VCENTER = 0x4
Global Const $DT_WORDBREAK = 0x10
Global Const $DT_WORD_ELLIPSIS = 0x40000
Global Const $RDW_ERASE = 0x0004
Global Const $RDW_FRAME = 0x0400
Global Const $RDW_INTERNALPAINT = 0x0002
Global Const $RDW_INVALIDATE = 0x0001
Global Const $RDW_NOERASE = 0x0020
Global Const $RDW_NOFRAME = 0x0800
Global Const $RDW_NOINTERNALPAINT = 0x0010
Global Const $RDW_VALIDATE = 0x0008
Global Const $RDW_ERASENOW = 0x0200
Global Const $RDW_UPDATENOW = 0x0100
Global Const $RDW_ALLCHILDREN = 0x0080
Global Const $RDW_NOCHILDREN = 0x0040
Global Const $WM_RENDERFORMAT = 0x0305
Global Const $WM_RENDERALLFORMATS = 0x0306
Global Const $WM_DESTROYCLIPBOARD = 0x0307
Global Const $WM_DRAWCLIPBOARD = 0x0308
Global Const $WM_PAINTCLIPBOARD = 0x0309
Global Const $WM_VSCROLLCLIPBOARD = 0x030A
Global Const $WM_SIZECLIPBOARD = 0x030B
Global Const $WM_ASKCBFORMATNAME = 0x030C
Global Const $WM_CHANGECBCHAIN = 0x030D
Global Const $WM_HSCROLLCLIPBOARD = 0x030E
Global Const $HTERROR = -2
Global Const $HTTRANSPARENT = -1
Global Const $HTNOWHERE = 0
Global Const $HTCLIENT = 1
Global Const $HTCAPTION = 2
Global Const $HTSYSMENU = 3
Global Const $HTGROWBOX = 4
Global Const $HTSIZE = $HTGROWBOX
Global Const $HTMENU = 5
Global Const $HTHSCROLL = 6
Global Const $HTVSCROLL = 7
Global Const $HTMINBUTTON = 8
Global Const $HTMAXBUTTON = 9
Global Const $HTLEFT = 10
Global Const $HTRIGHT = 11
Global Const $HTTOP = 12
Global Const $HTTOPLEFT = 13
Global Const $HTTOPRIGHT = 14
Global Const $HTBOTTOM = 15
Global Const $HTBOTTOMLEFT = 16
Global Const $HTBOTTOMRIGHT = 17
Global Const $HTBORDER = 18
Global Const $HTREDUCE = $HTMINBUTTON
Global Const $HTZOOM = $HTMAXBUTTON
Global Const $HTSIZEFIRST = $HTLEFT
Global Const $HTSIZELAST = $HTBOTTOMRIGHT
Global Const $HTOBJECT = 19
Global Const $HTCLOSE = 20
Global Const $HTHELP = 21
Global Const $COLOR_SCROLLBAR = 0
Global Const $COLOR_BACKGROUND = 1
Global Const $COLOR_ACTIVECAPTION = 2
Global Const $COLOR_INACTIVECAPTION = 3
Global Const $COLOR_MENU = 4
Global Const $COLOR_WINDOW = 5
Global Const $COLOR_WINDOWFRAME = 6
Global Const $COLOR_MENUTEXT = 7
Global Const $COLOR_WINDOWTEXT = 8
Global Const $COLOR_CAPTIONTEXT = 9
Global Const $COLOR_ACTIVEBORDER = 10
Global Const $COLOR_INACTIVEBORDER = 11
Global Const $COLOR_APPWORKSPACE = 12
Global Const $COLOR_HIGHLIGHT = 13
Global Const $COLOR_HIGHLIGHTTEXT = 14
Global Const $COLOR_BTNFACE = 15
Global Const $COLOR_BTNSHADOW = 16
Global Const $COLOR_GRAYTEXT = 17
Global Const $COLOR_BTNTEXT = 18
Global Const $COLOR_INACTIVECAPTIONTEXT = 19
Global Const $COLOR_BTNHIGHLIGHT = 20
Global Const $COLOR_3DDKSHADOW = 21
Global Const $COLOR_3DLIGHT = 22
Global Const $COLOR_INFOTEXT = 23
Global Const $COLOR_INFOBK = 24
Global Const $COLOR_HOTLIGHT = 26
Global Const $COLOR_GRADIENTACTIVECAPTION = 27
Global Const $COLOR_GRADIENTINACTIVECAPTION = 28
Global Const $COLOR_MENUHILIGHT = 29
Global Const $COLOR_MENUBAR = 30
Global Const $COLOR_DESKTOP = 1
Global Const $COLOR_3DFACE = 15
Global Const $COLOR_3DSHADOW = 16
Global Const $COLOR_3DHIGHLIGHT = 20
Global Const $COLOR_3DHILIGHT = 20
Global Const $COLOR_BTNHILIGHT = 20
Global Const $HINST_COMMCTRL = -1
Global Const $IDB_STD_SMALL_COLOR = 0
Global Const $IDB_STD_LARGE_COLOR = 1
Global Const $IDB_VIEW_SMALL_COLOR = 4
Global Const $IDB_VIEW_LARGE_COLOR = 5
Global Const $IDB_HIST_SMALL_COLOR = 8
Global Const $IDB_HIST_LARGE_COLOR = 9
Global Const $STARTF_FORCEOFFFEEDBACK = 0x80
Global Const $STARTF_FORCEONFEEDBACK = 0x40
Global Const $STARTF_RUNFULLSCREEN = 0x20
Global Const $STARTF_USECOUNTCHARS = 0x8
Global Const $STARTF_USEFILLATTRIBUTE = 0x10
Global Const $STARTF_USEHOTKEY = 0x200
Global Const $STARTF_USEPOSITION = 0x4
Global Const $STARTF_USESHOWWINDOW = 0x1
Global Const $STARTF_USESIZE = 0x2
Global Const $STARTF_USESTDHANDLES = 0x100
Global Const $CDDS_PREPAINT = 0x00000001
Global Const $CDDS_POSTPAINT = 0x00000002
Global Const $CDDS_PREERASE = 0x00000003
Global Const $CDDS_POSTERASE = 0x00000004
Global Const $CDDS_ITEM = 0x00010000
Global Const $CDDS_ITEMPREPAINT = 0x00010001
Global Const $CDDS_ITEMPOSTPAINT = 0x00010002
Global Const $CDDS_ITEMPREERASE = 0x00010003
Global Const $CDDS_ITEMPOSTERASE = 0x00010004
Global Const $CDDS_SUBITEM = 0x00020000
Global Const $CDIS_SELECTED = 0x0001
Global Const $CDIS_GRAYED = 0x0002
Global Const $CDIS_DISABLED = 0x0004
Global Const $CDIS_CHECKED = 0x0008
Global Const $CDIS_FOCUS = 0x0010
Global Const $CDIS_DEFAULT = 0x0020
Global Const $CDIS_HOT = 0x0040
Global Const $CDIS_MARKED = 0x0080
Global Const $CDIS_INDETERMINATE = 0x0100
Global Const $CDIS_SHOWKEYBOARDCUES = 0x0200
Global Const $CDIS_NEARHOT = 0x0400
Global Const $CDIS_OTHERSIDEHOT = 0x0800
Global Const $CDIS_DROPHILITED = 0x1000
Global Const $CDRF_DODEFAULT = 0x00000000
Global Const $CDRF_NEWFONT = 0x00000002
Global Const $CDRF_SKIPDEFAULT = 0x00000004
Global Const $CDRF_NOTIFYPOSTPAINT = 0x00000010
Global Const $CDRF_NOTIFYITEMDRAW = 0x00000020
Global Const $CDRF_NOTIFYSUBITEMDRAW = 0x00000020
Global Const $CDRF_NOTIFYPOSTERASE = 0x00000040
Global Const $CDRF_DOERASE = 0x00000008
Global Const $CDRF_SKIPPOSTPAINT = 0x00000100
Global Const $GUI_SS_DEFAULT_GUI = BitOR($WS_MINIMIZEBOX, $WS_CAPTION, $WS_POPUP, $WS_SYSMENU)
Global Const $__SS_BITMAP = 0x0E
Global Const $__SS_ICON = 0x03
Global Const $__STM_SETIMAGE = 0x0172
Global Const $__STM_GETIMAGE = 0x0173
Global $sLOGFONT = "int;" & _
"int;" & _
"int;" & _
"int;" & _
"int;" & _
"byte;" & _
"byte;" & _
"byte;" & _
"byte;" & _
"byte;" & _
"byte;" & _
"byte;" & _
"byte;" & _
"wchar[32]"
Global Const $sNONCLIENTMETRICS = "uint;" & _
"int;" & _
"int;" & _
"int;" & _
"int;" & _
"int;" & _
$sLOGFONT & ";" & _
"int;" & _
"int;" & _
$sLOGFONT & ";" & _
"int;" & _
"int;" & _
$sLOGFONT & ";" & _
$sLOGFONT & ";" & _
$sLOGFONT
Global Const $sMENUITEMINFO = "uint;" & _
"uint;" & _
"uint;" & _
"uint;" & _
"uint;" & _
"hwnd;" & _
"hwnd;" & _
"hwnd;" & _
"long;" & _
"ptr;" & _
"uint;" & _
"hwnd"
Global $sNOTIFYICONDATAW = "dword;" & _
"hwnd;" & _
"uint;" & _
"uint;" & _
"uint;" & _
"hwnd;"
Switch @OSVersion
Case "WIN_95", "WIN_98", "WIN_NT4"
$sNOTIFYICONDATAW &= "wchar[64]"
Case Else
$sNOTIFYICONDATAW &= "wchar[128];" & _
"dword;" & _
"dword;" & _
"wchar[256];" & _
"uint;" & _
"wchar[64];" & _
"dword"
EndSwitch
If Not IsDeclared("NIN_SELECT") Then Global Const $NIN_SELECT = 0x0400
If Not IsDeclared("NINF_KEY") Then Global Const $NINF_KEY = 0x1
If Not IsDeclared("NIN_KEYSELECT") Then Global Const $NIN_KEYSELECT = BitOr($NIN_SELECT, $NINF_KEY)
If Not IsDeclared("NIN_BALLOONSHOW") Then Global Const $NIN_BALLOONSHOW = 0x0400 + 2
If Not IsDeclared("NIN_BALLOONHIDE") Then Global Const $NIN_BALLOONHIDE = 0x0400 + 3
If Not IsDeclared("NIN_BALLOONTIMEOUT") Then Global Const $NIN_BALLOONTIMEOUT = 0x0400 + 4
If Not IsDeclared("NIN_BALLOONUSERCLICK") Then Global Const $NIN_BALLOONUSERCLICK = 0x0400 + 5
If Not IsDeclared("NIN_POPUPOPEN") Then Global Const $NIN_POPUPOPEN = 0x0400 + 6
If Not IsDeclared("NIN_POPUPCLOSE") Then Global Const $NIN_POPUPCLOSE = 0x0400 + 7
If Not IsDeclared("NIM_ADD") Then Global Const $NIM_ADD = 0x00000000
If Not IsDeclared("NIM_MODIFY") Then Global Const $NIM_MODIFY = 0x00000001
If Not IsDeclared("NIM_DELETE") Then Global Const $NIM_DELETE = 0x00000002
If Not IsDeclared("NIM_SETFOCUS") Then Global Const $NIM_SETFOCUS = 0x00000003
If Not IsDeclared("NIM_SETVERSION") Then Global Const $NIM_SETVERSION = 0x00000004
If Not IsDeclared("NIF_MESSAGE") Then Global Const $NIF_MESSAGE = 0x00000001
If Not IsDeclared("NIF_ICON") Then Global Const $NIF_ICON = 0x00000002
If Not IsDeclared("NIF_TIP") Then Global Const $NIF_TIP = 0x00000004
If Not IsDeclared("NIF_STATE") Then Global Const $NIF_STATE = 0x00000008
If Not IsDeclared("NIF_INFO") Then Global Const $NIF_INFO = 0x00000010
If Not IsDeclared("NIF_REALTIME") Then Global Const $NIF_REALTIME = 0x00000040
If Not IsDeclared("NIF_SHOWTIP") Then Global Const $NIF_SHOWTIP = 0x00000080
If Not IsDeclared("NIS_HIDDEN") Then Global Const $NIS_HIDDEN = 0x00000001
If Not IsDeclared("NIS_SHAREDICON") Then Global Const $NIS_SHAREDICON = 0x00000002
If Not IsDeclared("NIIF_NONE") Then Global Const $NIIF_NONE = 0x00000000
If Not IsDeclared("NIIF_INFO") Then Global Const $NIIF_INFO = 0x00000001
If Not IsDeclared("NIIF_WARNING") Then Global Const $NIIF_WARNING = 0x00000002
If Not IsDeclared("NIIF_ERROR") Then Global Const $NIIF_ERROR = 0x00000003
If Not IsDeclared("NIIF_USER") Then Global Const $NIIF_USER = 0x00000004
If Not IsDeclared("NIIF_ICON_MASK") Then Global Const $NIIF_ICON_MASK = 0x0000000F
If Not IsDeclared("NIIF_NOSOUND") Then Global Const $NIIF_NOSOUND = 0x00000010
If Not IsDeclared("NIIF_LARGE_ICON") Then Global Const $NIIF_LARGE_ICON = 0x00000020
If Not IsDeclared("WM_RBUTTONDBLCLK") Then Global Const $WM_RBUTTONDBLCLK = 0x0206
Global $hComctl32Dll = DllOpen("comctl32.dll")
Global $hGdi32Dll = DllOpen("gdi32.dll")
Global $hKernel32Dll = DllOpen("kernel32.dll")
Global $hShell32Dll = DllOpen("shell32.dll")
Global $hUser32Dll = DllOpen("user32.dll")
Global $hMsimg32Dll = DllOpen("msimg32.dll")
Global $bUseAdvMenu = TRUE
Global $bUseAdvTrayMenu = TRUE
Global $bUseRGBColors = FALSE
Global $nMenuBkClr = 0xFFFFFF
Global $nMenuIconBkClr = 0xDBD8D8
Global $nMenuSelectBkClr = 0xD2BDB6
Global $nMenuSelectRectClr = 0x854240
Global $nMenuSelectTextClr = 0x000000
Global $nMenuTextClr = 0x000000
Global $nMenuSideBkClr = 0xD00000
Global $nMenuSideTxtClr = 0xFFFFFF
Global $nTrayBkClr = 0xFFFFFF
Global $nTrayIconBkClr = 0xD1D8DB
Global $nTraySelectBkClr = 0xD2BDB6
Global $nTraySelectRectClr = 0x854240
Global $nTraySelectTextClr = 0x000000
Global $nTrayTextClr = 0x000000
If $bUseRGBColors Then
$nMenuIconBkClr = 0xD8D8DB
$nMenuSelectBkClr = 0xB6BDD2
$nMenuSelectRectClr = 0x404285
$nMenuSideBkClr = 0x0000D0
$nTrayIconBkClr = 0xDBD8D1
$nTraySelectBkClr = 0xB6BDD2
$nTraySelectRectClr = 0x404285
EndIf
Global $nMenuIconBkClr2 = $nMenuIconBkClr
Global $nMenuSideBkClr2 = $nMenuSideBkClr
Global $nTrayIconBkClr2 = $nTrayIconBkClr
Global $arMenuItems[1][8]
$arMenuItems[0][0] = 0
Global $nMenuItemsRedim = 10
Global $arSideItems[1][10]
$arSideItems[0][0] = 0
Global $hMenuFont = 0
_CreateMenuFont($hMenuFont)
Global $hMenuImageList = ImageList_Create(16, 16, BitOr(0x0001, 0x0020), 0, 1)
Global $hBlankIcon = 0
Global $TRAYNOTIFYIDS[1][9]
$TRAYNOTIFYIDS[0][0] = 0
Global $TRAYMSGWND = 0
Global $TRAYNOTIFYID = -1
Global $TRAYLASTID = -1
Global $MENULASTITEM = -1
Global $TRAYLASTITEM = -1
Global $TRAYLASTMENU = -1
Global $TRAYTIPMSG = 0x0400 + 1
Global $FLASHTIMERID = 3
Global $FLASHTIMEOUT = 750
Global $sDefaultTT = "AutoIt - " & @ScriptName
GUIRegisterMsg(0x002B, "WM_DRAWITEM")
GUIRegisterMsg(0x002C, "WM_MEASUREITEM")
GUIRegisterMsg($TRAYTIPMSG, "_TrayWndProc")
GUIRegisterMsg(0x001A, "WM_SETTINGCHANGE")
GUIRegisterMsg(0x0113, "WM_TIMER")
Func OnAutoItExit()
ImageList_Destroy($hMenuImageList)
DeleteObject($hMenuFont)
if IsArray( $arSideItems ) then
For $i = 1 To $arSideItems[0][0]
If $arSideItems[$i][6] <> 0 Then _
DeleteObject($arSideItems[$i][6])
Next
endif
DllClose($hComctl32Dll)
DllClose($hGdi32Dll)
DllClose($hKernel32Dll)
DllClose($hShell32Dll)
DllClose($hUser32Dll)
DllClose($hMsimg32Dll)
$arMenuItems = 0
$arSideItems = 0
$TRAYNOTIFYIDS = 0
EndFunc
Func _SetSideMenuColor($nIdx, $nColor = -2)
Return _SetSideMenuColors($nIdx, _GetBGRColor($nColor))
EndFunc
Func _SetSideMenuBkColor($nIdx, $nColor = -2)
Return _SetSideMenuColors($nIdx, -1, _GetBGRColor($nColor))
EndFunc
Func _SetSideMenuBkGradColor($nIdx, $nColor = -2)
Return _SetSideMenuColors($nIdx, -1, -1, _GetBGRColor($nColor))
EndFunc
Func _GetBGRColor($nColor)
If $bUseRGBColors And $nColor <> -2 Then
Return BitOr(BitShift(BitAnd($nColor, 0xFF), -16), BitAnd($nColor, 0xFF00), BitShift($nColor, 16))
Else
Return $nColor
EndIf
EndFunc
Func _GetIconID($nID, $sFile)
If StringRight($sFile, 4) = ".exe" Then
If $nID < 0 Then
$nID = -($nID + 1)
ElseIf $nID > 0 Then
$nID = - $nID
EndIf
ElseIf StringRight($sFile, 4) = ".icl" And $nID < 0 Then
$nID = -($nID + 1)
Else
If $nID > 0 Then
$nID = - $nID
ElseIf $nID < 0 Then
$nID = -($nID + 1)
EndIf
EndIf
Return $nID
EndFunc
Func _TrayWndProc($hWnd, $Msg, $wParam, $lParam)
If $hWnd = $TRAYMSGWND Then
_TrayNotifyIcon($hWnd, $Msg, $wParam, $lParam)
EndIf
EndFunc
Func _TrayNotifyIcon($hWnd, $Msg, $wParam, $lParam)
Local $nClick = 0
Local $nID = $wParam
If $TRAYNOTIFYIDS[$nID][5] <> "" And _
($TRAYNOTIFYIDS[$nID][6] = 0 Or _
$TRAYNOTIFYIDS[$nID][6] = $lParam) Then
Call($TRAYNOTIFYIDS[$nID][5], $nID, $lParam)
EndIf
Switch $lParam
Case $WM_LBUTTONDOWN
$nClick = 1
case 0x0202
$nClick = 2
case $WM_LBUTTONDBLCLK
$nClick = 4
case $WM_RBUTTONDOWN
$nClick = 8
case $WM_RBUTTONUP
$nClick = 16
case $WM_RBUTTONDBLCLK
$nClick = 32
case 0x0200
$nClick = 64
EndSwitch
If BitAnd($nClick, $TRAYNOTIFYIDS[$nID][3]) And $TRAYNOTIFYIDS[$nID][2] > 0 Then
Local $hMenu = GUICtrlGetHandle($TRAYNOTIFYIDS[$nID][2])
If $hMenu <> 0 Then
Local $stPoint = DllStructCreate("int;int")
GetCursorPos(DllStructGetPtr($stPoint))
SetForegroundWindow($hWnd)
TrackPopupMenuEx($hMenu, 0, DllStructGetData($stPoint, 1), DllStructGetData($stPoint, 2), $hWnd, 0)
PostMessage($hWnd, 0, 0, 0)
EndIf
EndIf
EndFunc
Func _GetNewTrayIndex()
Local $i, $bFreeFound = FALSE
For $i = 1 To $TRAYNOTIFYIDS[0][0]
If $TRAYNOTIFYIDS[$i][0] = 0 Then
$bFreeFound = TRUE
ExitLoop
EndIf
Next
If Not $bFreeFound Then
$TRAYNOTIFYIDS[0][0] += 1
Local $nSize = UBound($TRAYNOTIFYIDS)
If $TRAYNOTIFYIDS[0][0] > $nSize - 10 Then _
Redim $TRAYNOTIFYIDS[$nSize + 10][9]
$i = $TRAYNOTIFYIDS[0][0]
EndIf
Return $i
EndFunc
Func _GetTrayNotifyIdx($nID)
If $TRAYMSGWND = 0 Then Return 0
Local $i, $nResult = 0
If $nID = -1 Then $nID = $TRAYLASTID
For $i = 1 To $TRAYNOTIFYIDS[0][0]
If $TRAYNOTIFYIDS[$i][0] = $nID Then
$nResult = $i
ExitLoop
EndIf
Next
Return $nResult
EndFunc
Func _TrayItemSetIcon($nMenuID, $sIconFile = "", $nIconID = -1)
If $nMenuID = -1 Then $nMenuID = $TRAYLASTITEM
If $nMenuID <= 0 Then Return 0
$nIconID = _GetIconID($nIconID, $sIconFile)
Local $i, $sText = "", $hMenu = 0
For $i = 1 To $arMenuItems[0][0]
If $arMenuItems[$i][0] = $nMenuID Then
$sText = $arMenuItems[$i][1]
$hMenu = $arMenuItems[$i][3]
If $sIconFile = "" And $nIconID = -1 Then
$arMenuItems[$i][2] = -1
_SetOwnerDrawn($hMenu, $nMenuID, $sText, FALSE)
GUICtrlSetData($nMenuID, $sText)
Else
If $sIconFile <> "" Then
$arMenuItems[$i][2] = _AddMenuIcon($sIconFile, $nIconID)
Else
$arMenuItems[$i][2] = -1
EndIf
_SetOwnerDrawn($hMenu, $nMenuID, $sText)
EndIf
Return 1
EndIf
Next
Return 0
EndFunc
Func _TrayItemSetText($nMenuID = -1, $sText = "")
If $nMenuID = -1 Then $nMenuID = $TRAYLASTITEM
If $nMenuID <= 0 Then Return 0
Local $i
For $i = 1 To $arMenuItems[0][0]
If $arMenuItems[$i][0] = $nMenuID Then
$arMenuItems[$i][1] = $sText
GUICtrlSetData($nMenuID, $sText)
Return 1
EndIf
Next
Return 0
EndFunc
Func _TrayItemGetText($nMenuID = -1)
If $nMenuID = -1 Then $nMenuID = $TRAYLASTITEM
If $nMenuID <= 0 Then Return 0
Local $i
For $i = 1 To $arMenuItems[0][0]
If $arMenuItems[$i][0] = $nMenuID Then
return $arMenuItems[$i][1]
EndIf
Next
EndFunc
Func _TrayIconCreate($sToolTip = "", $sIconFile = @AutoItExe, $nIconID = 0, $sCallback = "", $nMsg = 0, $hIcon = 0)
If $sToolTip = "" Then $sToolTip = $sDefaultTT
$nIconID = _GetIconID($nIconID, $sIconFile)
If $sIconFile = "" Then
If $hIcon = 0 Then
If $nIconID = 0 Then
$sIconFile = @AutoItExe
Else
$hIcon = LoadIcon(0, $nIconID)
EndIf
EndIf
EndIf
If $sIconFile <> "" Then
Local $stIcon = DllStructCreate("hwnd")
If ExtractIconExW($sIconFile, $nIconID, 0, DllStructGetPtr($stIcon), 1) > 0 Then
$hIcon = DllStructGetData($stIcon, 1)
Else
$hIcon = LoadIcon(0, 32516)
EndIf
EndIf
If $TRAYMSGWND = 0 Then
$TRAYMSGWND = GUICreate("", 1, 1, 9999, 9999, -1, 0x00000080)
GUISetState()
ShowWindow($TRAYMSGWND, @SW_HIDE)
EndIf
Local $nNID = _GetNewTrayIndex()
If $nNID = 0 Then
DestroyIcon($hIcon)
Return 0
EndIf
$TRAYNOTIFYIDS[$nNID][0] = $nNID
$TRAYNOTIFYIDS[$nNID][1] = $hIcon
$TRAYNOTIFYIDS[$nNID][2] = 0
$TRAYNOTIFYIDS[$nNID][3] = 9
$TRAYNOTIFYIDS[$nNID][4] = $sToolTip
$TRAYNOTIFYIDS[$nNID][5] = $sCallback
$TRAYNOTIFYIDS[$nNID][6] = $nMsg
$TRAYNOTIFYIDS[$nNID][7] = FALSE
$TRAYNOTIFYIDS[$nNID][8] = FALSE
$TRAYLASTID = $nNID
Return $nNID
EndFunc
Func _TrayIconDelete($nID)
If $nID = -1 Then $nID = $TRAYLASTID
If $TRAYMSGWND = 0 Or $nID <= 0 Then Return 0
Local $stNID = DllStructCreate($sNOTIFYICONDATAW)
DllStructSetData($stNID, 1, DllStructGetSize($stNID))
DllStructSetData($stNID, 2, $TRAYMSGWND)
DllStructSetData($stNID, 3, $nID)
Local $nResult = 0
Local $i
For $i = 1 To $TRAYNOTIFYIDS[0][0]
If $nID = $TRAYNOTIFYIDS[$i][0] Then
Local $stNID = DllStructCreate($sNOTIFYICONDATAW)
DllStructSetData($stNID, 1, DllStructGetSize($stNID))
DllStructSetData($stNID, 2, $TRAYMSGWND)
DllStructSetData($stNID, 3, $nID)
$nResult = Shell_NotifyIcon($NIM_DELETE, DllStructGetPtr($stNID))
DestroyIcon($TRAYNOTIFYIDS[$i][1])
$TRAYNOTIFYIDS[$i][8] = FALSE
$TRAYNOTIFYIDS[$i][7] = FALSE
$TRAYNOTIFYIDS[$i][6] = 0
$TRAYNOTIFYIDS[$i][5] = ""
$TRAYNOTIFYIDS[$i][4] = ""
$TRAYNOTIFYIDS[$i][3] = 0
If $TRAYNOTIFYIDS[$i][2] <> 0 Then GUIDelete($TRAYNOTIFYIDS[$i][2])
$TRAYNOTIFYIDS[$i][2] = 0
$TRAYNOTIFYIDS[$i][1] = 0
$TRAYNOTIFYIDS[$i][0] = 0
ExitLoop
EndIf
Next
Return $nResult
EndFunc
Func _TrayIconSetState($nID = -1, $nState = 1)
If $nState = 0 Then Return 1
If $nID = -1 Then $nID = $TRAYLASTID
If $TRAYMSGWND = 0 Or $nID <= 0 Then Return 0
Local $i, $nResult = 0, $bFound = FALSE
For $i = 1 To $TRAYNOTIFYIDS[0][0]
If $nID = $TRAYNOTIFYIDS[$i][0] Then
$bFound = TRUE
ExitLoop
EndIf
Next
If Not $bFound Then Return 0
Local $stNID = DllStructCreate($sNOTIFYICONDATAW)
If BitAnd($nState, 1) Then
DllStructSetData($stNID, 1, DllStructGetSize($stNID))
DllStructSetData($stNID, 2, $TRAYMSGWND)
DllStructSetData($stNID, 3, $nID)
DllStructSetData($stNID, 4, BitOr($NIF_ICON, $NIF_MESSAGE))
DllStructSetData($stNID, 5, $TRAYTIPMSG)
DllStructSetData($stNID, 6, $TRAYNOTIFYIDS[$nID][1])
$nResult = Shell_NotifyIcon($NIM_ADD, DllStructGetPtr($stNID))
If $nResult Then _TrayIconSetToolTip($nID, $TRAYNOTIFYIDS[$nID][4])
ElseIf BitAnd($nState, 2) Then
DllStructSetData($stNID, 1, DllStructGetSize($stNID))
DllStructSetData($stNID, 2, $TRAYMSGWND)
DllStructSetData($stNID, 3, $nID)
$nResult = Shell_NotifyIcon($NIM_DELETE, DllStructGetPtr($stNID))
EndIf
If BitAnd($nState, 4) Then
If Not $TRAYNOTIFYIDS[$nID][7] Then
If $hBlankIcon = 0 Then _CreateBlankIcon()
If $hBlankIcon <> 0 Then
SetTimer($TRAYMSGWND, $FLASHTIMERID, $FLASHTIMEOUT, 0)
$TRAYNOTIFYIDS[$nID][7] = TRUE
EndIf
EndIf
ElseIf BitAnd($nState, 8) Then
KillTimer($TRAYMSGWND, $FLASHTIMERID)
DllStructSetData($stNID, 1, DllStructGetSize($stNID))
DllStructSetData($stNID, 2, $TRAYMSGWND)
DllStructSetData($stNID, 3, $nID)
DllStructSetData($stNID, 4, $NIF_ICON)
DllStructSetData($stNID, 6, $TRAYNOTIFYIDS[$nID][1])
$nResult = Shell_NotifyIcon($NIM_MODIFY, DllStructGetPtr($stNID))
$TRAYNOTIFYIDS[$nID][7] = FALSE
$TRAYNOTIFYIDS[$nID][8] = FALSE
EndIf
Return $nResult
EndFunc
Func _TrayIconSetIcon($nID = -1, $sIconFile = @AutoItExe, $nIconID = 0)
If $nID = -1 Then $nID = $TRAYLASTID
If $TRAYMSGWND = 0 Or $nID <= 0 Then Return 0
$nIconID = _GetIconID($nIconID, $sIconFile)
Local $hIcon = 0
If $sIconFile = "" Then
If $nIconID = 0 Then
$sIconFile = @AutoItExe
Else
$hIcon = LoadIcon(0, $nIconID)
EndIf
EndIf
If $sIconFile <> "" Then
Local $stIcon = DllStructCreate("hwnd")
If ExtractIconExW($sIconFile, $nIconID, 0, DllStructGetPtr($stIcon), 1) > 0 Then
$hIcon = DllStructGetData($stIcon, 1)
Else
$hIcon = LoadIcon(0, 32516)
EndIf
EndIf
Local $stNID = DllStructCreate($sNOTIFYICONDATAW)
DllStructSetData($stNID, 1, DllStructGetSize($stNID))
DllStructSetData($stNID, 2, $TRAYMSGWND)
DllStructSetData($stNID, 3, $nID)
DllStructSetData($stNID, 4, $NIF_ICON)
DllStructSetData($stNID, 6, $hIcon)
DestroyIcon($TRAYNOTIFYIDS[$nID][1])
Local $nResult = Shell_NotifyIcon($NIM_MODIFY, DllStructGetPtr($stNID))
If $nResult Then
$TRAYNOTIFYIDS[$nID][1] = $hIcon
Else
DestroyIcon($hIcon)
$TRAYNOTIFYIDS[$nID][1] = 0
EndIf
Return $nResult
EndFunc
Func _TrayIconSetToolTip($nID = -1, $sToolTip = $sDefaultTT)
If $nID = -1 Then $nID = $TRAYLASTID
If $TRAYMSGWND = 0 Or $nID <= 0 Then Return 0
Local $stNID = DllStructCreate($sNOTIFYICONDATAW)
DllStructSetData($stNID, 1, DllStructGetSize($stNID))
DllStructSetData($stNID, 2, $TRAYMSGWND)
DllStructSetData($stNID, 3, $nID)
DllStructSetData($stNID, 4, $NIF_TIP)
DllStructSetData($stNID, 7, $sToolTip)
Return Shell_NotifyIcon($NIM_MODIFY, DllStructGetPtr($stNID))
EndFunc
Func _GetNewItemIndex()
Local $i = 0, $bFreeFound = FALSE
For $i = 1 To $arMenuItems[0][0]
If $arMenuItems[$i][0] = 0 Then
$bFreeFound = TRUE
ExitLoop
EndIf
Next
If Not $bFreeFound Then
$arMenuItems[0][0] += 1
Local $nSize = UBound($arMenuItems)
If $arMenuItems[0][0] > $nSize - $nMenuItemsRedim Then _
Redim $arMenuItems[$nSize + $nMenuItemsRedim][8]
$i = $arMenuItems[0][0]
EndIf
Return $i
EndFunc
Func _GetNewSideItemIndex()
Local $i = 0, $bFreeFound = FALSE
For $i = 1 To $arSideItems[0][0]
If $arSideItems[$i][0] = 0 Then
$bFreeFound = TRUE
ExitLoop
EndIf
Next
If Not $bFreeFound Then
$arSideItems[0][0] += 1
Local $nSize = UBound($arSideItems)
If $arSideItems[0][0] > $nSize - $nMenuItemsRedim Then _
Redim $arSideItems[$nSize + $nMenuItemsRedim][10]
$i = $arSideItems[0][0]
EndIf
Return $i
EndFunc
Func _TrayCreateContextMenu($nID = -1)
Local $nIdx = _GetTrayNotifyIdx($nID)
If $nIdx = 0 Then Return 0
Local $nContext = 0
If $TRAYNOTIFYIDS[$nIdx][2] = 0 Then
Local $nDummy = GUICtrlCreateDummy()
$nContext = GUICtrlCreateContextMenu($nDummy)
$TRAYNOTIFYIDS[$nIdx][2] = $nContext
$TRAYLASTMENU = $nContext
EndIf
Return $nContext
EndFunc
Func _TrayCreateItem($sText, $nMenuID = -1, $nMenuEntry = -1, $bRadio = 0)
If $nMenuID = -1 Then $nMenuID = $TRAYLASTMENU
Local $nMenuItem = GUICtrlCreateMenuItem($sText, $nMenuID, $nMenuEntry, $bRadio)
If $nMenuItem > 0 Then
Local $nIdx = _GetNewItemIndex()
If $nIdx = 0 Then Return 0
$TRAYLASTITEM = $nMenuItem
Local $hMenu = GUICtrlGetHandle($nMenuID)
$arMenuItems[$nIdx][0] = $nMenuItem
$arMenuItems[$nIdx][1] = $sText
$arMenuItems[$nIdx][2] = -1
$arMenuItems[$nIdx][3] = $hMenu
$arMenuItems[$nIdx][4] = $bRadio
$arMenuItems[$nIdx][5] = TRUE
$arMenuItems[$nIdx][6] = -1
$arMenuItems[$nIdx][7] = FALSE
EndIf
Return $nMenuItem
EndFunc
Func _TrayIconSetClick($nID, $nClicks)
If $nID = -1 Then $nID = $TRAYLASTID
If $TRAYMSGWND = 0 Or $nID <= 0 Then Return 0
$TRAYNOTIFYIDS[$nID][3] = $nClicks
EndFunc
Func WM_MEASUREITEM($hWnd, $Msg, $wParam, $lParam)
Local $nResult = FALSE
Local $stMeasureItem = DllStructCreate("uint;uint;uint;uint;uint;dword", $lParam)
If DllStructGetData($stMeasureItem, 1) = 1 Then
Local $nIconSize = 0
Local $nCheckX = 0
Local $nSpace = 2
_GetMenuInfos($nIconSize, $nCheckX)
If $nIconSize < $nCheckX Then $nIconSize = $nCheckX
Local $nMenuItemID = DllStructGetData($stMeasureItem, 3)
Local $hDC = GetDC($hWnd)
Local $hMenu = _GetMenuHandle($nMenuItemID)
Local $nState = GetMenuState($hMenu, $nMenuItemID, 0)
Local $hMFont = 0
Local $bBoldFont = FALSE
If BitAnd($nState, 0x00001000) And Not BitAnd($nState, 0x00000010) Then
_CreateMenuFont($hMFont, TRUE)
$bBoldFont = TRUE
Else
$hMFont = $hMenuFont
EndIf
Local $hFont = SelectObject($hDC, $hMFont)
Local $sText = _GetMenuText($nMenuItemID)
Local $nSideIdx = _GetSideMenuIndex($hMenu)
Local $sSideText = _GetSideMenuText($nSideIdx)
Local $hSideImage = _GetSideMenuImage($nSideIdx)
Local $nSideWidth = 0
If $sSideText <> "" Then
If $hSideImage = 0 Then
Local $hSideFont = 0
_CreateMenuFont($hSideFont, TRUE, TRUE)
Local $hOldObj = SelectObject($hDC, $hSideFont)
$nSideWidth = _GetSideMenuTextWidth($hDC, $sSideText) + 2
SelectObject($hDC, $hOldObj)
DeleteObject($hSideFont)
Else
Local $nSideHeight = 0
Local $bStretch = FALSE
_GetSideMenuImageSize($nSideIdx, $nSideWidth, $nSideHeight, $bStretch)
EndIf
EndIf
Local $nMaxTextWidth = 0
Local $nMaxTextAccWidth = 0
_GetMenuMaxTextWidth($hDC, $hMenu, $nMaxTextWidth, $nMaxTextAccWidth)
If $nMaxTextAccWidth > 0 Then $nMaxTextAccWidth += 4
Local $nHeight = 2 * $nSpace + $nIconSize
Local $nWidth = 0
If $sText = "" Then
$nHeight = 4
Else
$nWidth = 6 * $nSpace + 2 * $nIconSize + $nMaxTextWidth + $nMaxTextAccWidth + $nSideWidth
If @OSVersion <> "WIN_98" And @OSVersion <> "WIN_ME" Then
$nWidth = $nWidth - $nCheckX + 1
EndIf
EndIf
DllStructSetData($stMeasureItem, 4, $nWidth)
DllStructSetData($stMeasureItem, 5, $nHeight)
SelectObject($hDC, $hFont)
If $bBoldFont Then DeleteObject($hMFont)
ReleaseDC($hWnd, $hDC)
$nResult = TRUE
EndIf
$stMeasureItem = 0
Return $nResult
EndFunc
Func WM_DRAWITEM($hWnd, $Msg, $wParam, $lParam)
Local $nResult = FALSE
Local $stDrawItem = DllStructCreate("uint;uint;uint;uint;uint;hwnd;hwnd;int[4];dword", $lParam)
If DllStructGetData($stDrawItem, 1) = 1 Then
Local $nMenuItemID = DllStructGetData($stDrawItem, 3)
Local $nAction = DllStructGetData($stDrawItem, 4)
Local $nState = DllStructGetData($stDrawItem, 5)
Local $hMenu = DllStructGetData($stDrawItem, 6)
Local $hDC = DllStructGetData($stDrawItem, 7)
Local $bChecked = BitAnd($nState, 0x0008)
Local $bGrayed = BitAnd($nState, 0x0002)
Local $bSelected = BitAnd($nState, 0x0001)
Local $bDefault = BitAnd($nState, 0x0020)
Local $bNoAcc = BitAnd($nState, 0x0100)
Local $bIsRadio = _GetMenuIsRadio($nMenuItemID)
Local $nSideIdx = _GetSideMenuIndex($hMenu)
Local $sSideText = _GetSideMenuText($nSideIdx)
Local $hSideImage = _GetSideMenuImage($nSideIdx)
Local $hSideFont = 0
Local $hOldObj = 0
Local $nSideWidth = 0
Local $nSideHeight = 0
Local $bHasSide = FALSE
Local $bStretch = FALSE
If $sSideText <> "" Then
If $hSideImage = 0 Then
_CreateMenuFont($hSideFont, TRUE, TRUE)
$hOldObj = SelectObject($hDC, $hSideFont)
$nSideWidth = _GetSideMenuTextWidth($hDC, $sSideText) + 2
SelectObject($hDC, $hOldObj)
Else
_GetSideMenuImageSize($nSideIdx, $nSideWidth, $nSideHeight, $bStretch)
EndIf
$bHasSide = TRUE
EndIf
Local $arIR[4]
$arIR[0] = DllStructGetData($stDrawItem, 8, 1) + $nSideWidth
$arIR[1] = DllStructGetData($stDrawItem, 8, 2)
$arIR[2] = DllStructGetData($stDrawItem, 8, 3)
$arIR[3] = DllStructGetData($stDrawItem, 8, 4)
Local $stItemRect = DllStructCreate("int;int;int;int")
_SetItemRect($stItemRect, $arIR[0], $arIR[1], $arIR[2], $arIR[3])
Local $nIconSize = 16
Local $nCheckX = 16
Local $nSpace = 2
_GetMenuInfos($nIconSize, $nCheckX)
Local $nMBkClr = $nMenuBkClr
Local $nMIconBkClr = $nMenuIconBkClr
Local $nMIconBkClr2 = $nMenuIconBkClr2
Local $nMSelectBkClr = $nMenuSelectBkClr
Local $nMSelectRectClr = $nMenuSelectRectClr
Local $nMSelectTextClr = $nMenuSelectTextClr
Local $nMTextClr = $nMenuTextClr
Local $bIsTrayItem = _IsTrayItem($nMenuItemID)
If $bIsTrayItem Then
$nMBkClr = $nTrayBkClr
$nMIconBkClr = $nTrayIconBkClr
$nMIconBkClr2 = $nTrayIconBkClr2
$nMSelectBkClr = $nTraySelectBkClr
$nMSelectRectClr = $nTraySelectRectClr
$nMSelectTextClr = $nTraySelectTextClr
$nMTextClr = $nTrayTextClr
EndIf
Local $hMFont = 0
Local $bBoldFont = FALSE
If $bDefault Then
_CreateMenuFont($hMFont, TRUE)
$bBoldFont = TRUE
Else
$hMFont = $hMenuFont
EndIf
Local $hBrush = 0
Local $hOldBrush = 0
Local $nClrSel = 0
Local $hBorderBrush = 0
Local $nLen = 0
Local $stSize = 0
If $nAction = 1 Then
Local $nCount = GetMenuItemCount($hMenu)
Local $nID = GetMenuItemID($hMenu, $nCount - 1)
If $nID = -1 Then
Local $stMII = DllStructCreate($sMENUITEMINFO)
DllStructSetData($stMII, 1, DllStructGetSize($stMII))
DllStructSetData($stMII, 2, 0x00000002)
If GetMenuItemInfo($hMenu, $nCount - 1, TRUE, DllStructGetPtr($stMII)) Then _
$nID = DllStructGetData($stMII, 5)
EndIf
If $nID = $nMenuItemID And $bHasSide Then
Local $stSideRect = DllStructCreate("int;int;int;int")
_SetItemRect($stSideRect, 0, 0, $nSideWidth, $arIR[3])
Local $nSideClr = $nMenuSideTxtClr
Local $nSideBkClr = $nMenuSideBkClr
Local $nSideBkClr2 = $nMenuSideBkClr2
_GetSideMenuColors($nSideIdx, $nSideClr, $nSideBkClr, $nSideBkClr2)
If $nSideBkClr <> -1 Then
If $nSideBkClr = $nSideBkClr2 Or _
$nSideBkClr2 = -1 Then
SetBkColor($hDC, $nSideBkClr)
$hBrush = CreateSolidBrush($nSideBkClr)
$hOldBrush = SelectObject($hDC, $hBrush)
FillRect($hDC, DllStructGetPtr($stSideRect), $hBrush)
SelectObject($hDC, $hOldBrush)
DeleteObject($hBrush)
$hBrush = 0
$hOldBrush = 0
Else
_FillGradientRect($hDC, $stSideRect, $nSideBkClr2, $nSideBkClr, TRUE)
EndIf
EndIf
If $hSideImage = 0 Then
$nLen = StringLen($sSideText)
$stSize = DllStructCreate("int;int")
$stSideText = DllStructCreate("wchar[" & $nLen + 1 & "]")
DllStructSetData($stSideText, 1, $sSideText)
$hOldObj = SelectObject($hDC, $hSideFont)
Local $nOldMode = SetBkMode($hDC, 1)
SetTextColor($hDC, $nSideClr)
DllStructSetData($stSideRect, 2, 8)
DllStructSetData($stSideRect, 4, DllStructGetData($stSideRect, 4) + 8)
DrawTextW($hDC, DllStructGetPtr($stSideText), _
StringLen($sSideText), _
DllStructGetPtr($stSideRect), _
BitOr(0x00000008, 0x00000020, 0x00000100))
SetBkMode($hDC, $nOldMode)
SelectObject($hDC, $hOldObj)
Else
Local $hCDC = CreateCompatibleDC($hDC)
$hObjOld = SelectObject($hCDC, $hSideImage)
If $bStretch Then
StretchBlt($hDC, 0, 0, $nSideWidth, $arIR[3], $hCDC, 0, 0, $nSideWidth, $nSideHeight, 0x00CC0020)
Else
BitBlt($hDC, 0, 0, $nSideWidth, $arIR[3], $hCDC, 0, $nSideHeight - $arIR[3], 0x00CC0020)
EndIf
SelectObject($hCDC, $hObjOld)
DeleteDC($hCDC)
EndIf
EndIf
EndIf
If $hSideFont <> 0 Then DeleteObject($hSideFont)
Local $hFont = SelectObject($hDC, $hMFont)
If $bSelected Then
If($bUseAdvMenu And $bIsTrayItem = FALSE) Or($bUseAdvTrayMenu And $bIsTrayItem) Then
$hBorderBrush = CreateSolidBrush($nMSelectRectClr)
If $bGrayed Then
$hBrush = CreateSolidBrush($nMBkClr)
$nClrSel = $nMBkClr
Else
$hBrush = CreateSolidBrush($nMSelectBkClr)
$nClrSel = $nMSelectBkClr
EndIf
Else
$hBrush = GetSysColorBrush(13)
$nClrSel = GetSysColor(13)
EndIf
Else
If($bUseAdvMenu And $bIsTrayItem = FALSE) Or($bUseAdvTrayMenu And $bIsTrayItem) Then
$hBrush = CreateSolidBrush($nMBkClr)
$nClrSel = $nMBkClr
Else
$hBrush = GetSysColorBrush(4)
$nClrSel = GetSysColor(4)
EndIf
EndIf
Local $nClrTxt = 0
If $bSelected And Not $bGrayed Then
If($bUseAdvMenu And $bIsTrayItem = FALSE) Or($bUseAdvTrayMenu And $bIsTrayItem) Then
$nClrTxt = SetTextColor($hDC, $nMSelectTextClr)
Else
$nClrTxt = SetTextColor($hDC, GetSysColor(14))
EndIf
ElseIf $bGrayed Then
$nClrTxt = SetTextColor($hDC, GetSysColor(17))
Else
If($bUseAdvMenu And $bIsTrayItem = FALSE) Or($bUseAdvTrayMenu And $bIsTrayItem) Then
$nClrTxt = SetTextColor($hDC, $nMTextClr)
Else
$nClrTxt = SetTextColor($hDC, GetSysColor(7))
EndIf
EndIf
Local $nClrBk = SetBkColor($hDC, $nClrSel)
$hOldBrush = SelectObject($hDC, $hBrush)
FillRect($hDC, DllStructGetPtr($stItemRect), $hBrush)
SelectObject($hDC, $hOldBrush)
DeleteObject($hBrush)
If($bUseAdvMenu And $bIsTrayItem = FALSE) Or($bUseAdvTrayMenu And $bIsTrayItem) Then
If Not $bSelected Or $bGrayed Then
_SetItemRect($stItemRect, $arIR[0], $arIR[1], $arIR[0] + 2 * $nSpace + $nIconSize + 1, $arIR[3])
If $nMIconBkClr = $nMIconBkClr2 Or _
$nMIconBkClr2 = -1 Then
$hBrush = CreateSolidBrush($nMIconBkClr)
$hOldBrush = SelectObject($hDC, $hBrush)
FillRect($hDC, DllStructGetPtr($stItemRect), $hBrush)
SelectObject($hDC, $hOldBrush)
DeleteObject($hBrush)
Else
_FillGradientRect($hDC, $stItemRect, $nMIconBkClr, $nMIconBkClr2)
EndIf
EndIf
EndIf
If $bChecked Then
_SetItemRect($stItemRect, $arIR[0] + 1, $arIR[1] + 1, $arIR[0] + $nIconSize + $nSpace + 1, $arIR[1] + $nIconSize + $nSpace + 1)
If $bSelected Then
If($bUseAdvMenu And $bIsTrayItem = FALSE) Or($bUseAdvTrayMenu And $bIsTrayItem) Then
$hBrush = CreateSolidBrush($nMSelectBkClr)
Else
$hBrush = GetSysColorBrush(13)
EndIf
Else
If($bUseAdvMenu And $bIsTrayItem = FALSE) Or($bUseAdvTrayMenu And $bIsTrayItem) Then
$hBrush = CreateSolidBrush($nMBkClr)
Else
$hBrush = GetSysColorBrush(4)
EndIf
EndIf
$hOldBrush = SelectObject($hDC, $hBrush)
FillRect($hDC, DllStructGetPtr($stItemRect), $hBrush)
SelectObject($hDC, $hOldBrush)
DeleteObject($hBrush)
Local $hDCBitmap = CreateCompatibleDC($hDC)
Local $hbmpCheck = CreateBitmap($nIconSize, $nIconSize, 1, 1, 0)
Local $hbmpOld = SelectObject($hDCBitmap, $hbmpCheck)
Local $x = DllStructGetData($stItemRect, 1) +($nIconSize + $nSpace - $nCheckX) / 2
Local $y = DllStructGetData($stItemRect, 2) +($nIconSize + $nSpace - $nCheckX) / 2 - $nSpace
_SetItemRect($stItemRect, 0, 0, $nIconSize, $nIconSize)
Local $nCtrlStyle = 0x0001
If $bIsRadio Then $nCtrlStyle = 0x0002
DrawFrameControl($hDCBitmap, DllStructGetPtr($stItemRect), 2, $nCtrlStyle)
BitBlt($hDC, $x, $y + 1, $nCheckX, $nCheckX, $hDCBitmap, 0, 0, 0x00CC0020)
If($bUseAdvMenu And $bIsTrayItem = FALSE) Or($bUseAdvTrayMenu And $bIsTrayItem) Then
_SetItemRect($stItemRect, $arIR[0] + 1, $arIR[1] + 1, $arIR[0] + $nIconSize + $nSpace + 1, $arIR[1] + $nIconSize + $nSpace + 1)
$hBrush = CreateSolidBrush($nMSelectRectClr)
$hOldBrush = SelectObject($hDC, $hBrush)
FrameRect($hDC, DllStructGetPtr($stItemRect), $hBrush)
SelectObject($hDC, $hOldBrush)
DeleteObject($hBrush)
EndIf
SelectObject($hDCBitmap, $hbmpOld)
DeleteObject($hbmpCheck)
DeleteDC($hDCBitmap)
EndIf
_SetItemRect($stItemRect, $arIR[0], $arIR[1], $arIR[2], $arIR[3])
If($bUseAdvMenu And $bIsTrayItem = FALSE) Or($bUseAdvTrayMenu And $bIsTrayItem) Then
If $bSelected Then
$hOldBrush = SelectObject($hDC, $hBorderBrush)
FrameRect($hDC, DllStructGetPtr($stItemRect), $hBorderBrush)
SelectObject($hDC, $hOldBrush)
DeleteObject($hBorderBrush)
EndIf
EndIf
Local $sText = _GetMenuText($nMenuItemID)
If $bNoAcc Then $sText = StringReplace($sText, "&", "")
Local $nWidth = 0
Local $sAcc = ""
Local $arText = StringSplit($sText, @Tab)
Local $bTab = FALSE
If IsArray($arText) And $arText[0] > 1 Then
$sText = $arText[1]
$sAcc = $arText[2]
$bTab = TRUE
EndIf
$nLen = StringLen($sText)
Local $stText = DllStructCreate("wchar[" & $nLen + 1 & "]")
DllStructSetData($stText, 1, $sText)
Local $nSaveLeft = DllStructGetData($stItemRect, 1)
Local $nLeft = $nSaveLeft
$nLeft += $nSpace
$nLeft += $nSpace
$nLeft += $nIconSize
$nLeft += $nSpace + 2
DllStructSetData($stItemRect, 1, $nLeft)
Local $nFlags = BitOr(0x00000100, 0x00000020, 0x00000004)
DrawTextW($hDC, DllStructGetPtr($stText), $nLen, DllStructGetPtr($stItemRect), $nFlags)
If $bTab Then
Local $nMaxTextWidth = 0
Local $nMaxTextAccWidth = 0
_GetMenuMaxTextWidth($hDC, $hMenu, $nMaxTextWidth, $nMaxTextAccWidth)
If $nMaxTextAccWidth > 0 Then $nMaxTextAccWidth += 4
$nWidth = 6 * $nSpace + 2 * $nIconSize + $nMaxTextWidth
If @OSVersion <> "WIN_98" And @OSVersion <> "WIN_ME" Then
$nWidth = $nWidth - $nCheckX + 1
EndIf
$nLen = StringLen($sAcc)
$stText = DllStructCreate("wchar[" & $nLen + 1 & "]")
DllStructSetData($stText, 1, $sAcc)
_SetItemRect($stItemRect, $arIR[0] + $nWidth, $arIR[1], $arIR[0] + $nWidth + $nMaxTextAccWidth, $arIR[3])
DrawTextW($hDC, DllStructGetPtr($stText), $nLen, DllStructGetPtr($stItemRect), $nFlags)
_SetItemRect($stItemRect, $arIR[0], $arIR[1], $arIR[2], $arIR[3])
EndIf
Local $nNoSelIconIndex = -1
Local $nSelIconIndex = -1
_GetMenuIconIndex($nMenuItemID, $nNoSelIconIndex, $nSelIconIndex)
Local $nIconIndex = $nNoSelIconIndex
If $bSelected And $nSelIconIndex > -1 Then $nIconIndex = $nSelIconIndex
If $nIconIndex > -1 Then
If Not $bChecked Then
If $bGrayed Then
ImageList_DrawEx($hMenuImageList, _
$nIconIndex, _
$hDC, _
$nSpace + $nSideWidth, _
DllStructGetData($stItemRect, 2) + 2, _
0, _
0, _
0xFFFFFFFF, _
0xFFFFFFFF, _
BitOr(0x0004, 0x0001))
Else
ImageList_Draw($hMenuImageList, _
$nIconIndex, _
$hDC, _
$nSpace + $nSideWidth, _
DllStructGetData($stItemRect, 2) + 2, _
0x0001)
EndIf
EndIf
EndIf
DllStructSetData($stItemRect, 1, $nSaveLeft)
If StringLen($sText) = 0 Then
If($bUseAdvMenu And $bIsTrayItem = FALSE) Or($bUseAdvTrayMenu And $bIsTrayItem) Then
DllStructSetData($stItemRect, 1, DllStructGetData($stItemRect, 1) + 4 * $nSpace + $nIconSize)
Else
DllStructSetData($stItemRect, 1, DllStructGetData($stItemRect, 1))
EndIf
DllStructSetData($stItemRect, 2, DllStructGetData($stItemRect, 2) + 1)
DllStructSetData($stItemRect, 4, DllStructGetData($stItemRect, 1) + 2)
DrawEdge($hDC, DllStructGetPtr($stItemRect), 0x0006, 0x0002)
EndIf
$stText = 0
$stItemRect = 0
SelectObject($hDC, $hFont)
If $bBoldFont Then DeleteObject($hMFont)
SetTextColor($hDC, $nClrTxt)
SetBkColor($hDC, $nClrBk)
$nResult = TRUE
EndIf
$stDrawItem = 0
Return $nResult
EndFunc
Func _ColorGetClr($nColor, $nMode)
Local $nClr = $nColor
If $bUseRGBColors Then $nClr = _GetBGRColor($nColor)
Switch $nMode
Case 1
$nClr = BitShift($nClr, 16)
Case 2
$nClr = BitShift(BitAnd($nClr, 0xFF00), 8)
Case 3
$nClr = BitAnd($nClr, 0xFF)
EndSwitch
Return $nClr
EndFunc
Func _FillGradientRect($hDC, $stRect, $nClr1, $nClr2, $bVert = FALSE)
Local $stVert = DllStructCreate("long;long;ushort;ushort;ushort;ushort;" & _
"long;long;ushort;ushort;ushort;ushort")
DllStructSetData($stVert, 1, DllStructGetData($stRect, 1))
DllStructSetData($stVert, 2, DllStructGetData($stRect, 2))
DllStructSetData($stVert, 3, BitShift(_ColorGetClr($nClr1, 3), -8))
DllStructSetData($stVert, 4, BitShift(_ColorGetClr($nClr1, 2), -8))
DllStructSetData($stVert, 5, BitShift(_ColorGetClr($nClr1, 1), -8))
DllStructSetData($stVert, 6, 0)
DllStructSetData($stVert, 7, DllStructGetData($stRect, 3))
DllStructSetData($stVert, 8, DllStructGetData($stRect, 4))
DllStructSetData($stVert, 9, BitShift(_ColorGetClr($nClr2, 3), -8))
DllStructSetData($stVert, 10, BitShift(_ColorGetClr($nClr2, 2), -8))
DllStructSetData($stVert, 11, BitShift(_ColorGetClr($nClr2, 1), -8))
DllStructSetData($stVert, 12, 0)
Local $stGradRect = DllStructCreate("ulong;ulong")
DllStructSetData($stGradRect, 1, 0)
DllStructSetData($stGradRect, 2, 1)
If $bVert Then
GradientFill($hDC, DllStructGetPtr($stVert), 2, DllStructGetPtr($stGradRect), 1, 1)
Else
GradientFill($hDC, DllStructGetPtr($stVert), 2, DllStructGetPtr($stGradRect), 1, 0)
EndIf
EndFunc
Func _SetItemRect(ByRef $stStruct, $p1, $p2, $p3, $p4)
DllStructSetData($stStruct, 1, $p1)
DllStructSetData($stStruct, 2, $p2)
DllStructSetData($stStruct, 3, $p3)
DllStructSetData($stStruct, 4, $p4)
EndFunc
Func WM_SETTINGCHANGE($hWnd, $Msg, $wParam, $lParam)
If $wParam = 0x002A Then _CreateMenuFont($hMenuFont)
EndFunc
Func WM_TIMER($hWnd, $Msg, $wParam, $lParam)
Local $nID = Number($wParam)
If $TRAYNOTIFYIDS[$nID][0] > 0 Then
If $TRAYNOTIFYIDS[$nID][7] Then
Local $stNID = DllStructCreate($sNOTIFYICONDATAW)
DllStructSetData($stNID, 1, DllStructGetSize($stNID))
DllStructSetData($stNID, 2, $TRAYMSGWND)
DllStructSetData($stNID, 3, $nID)
DllStructSetData($stNID, 4, $NIF_ICON)
If $TRAYNOTIFYIDS[$nID][8] Then
DllStructSetData($stNID, 6, $hBlankIcon)
$TRAYNOTIFYIDS[$nID][8] = FALSE
Else
DllStructSetData($stNID, 6, $TRAYNOTIFYIDS[$nID][1])
$TRAYNOTIFYIDS[$nID][8] = TRUE
EndIf
Shell_NotifyIcon($NIM_MODIFY, DllStructGetPtr($stNID))
EndIf
EndIf
KillTimer($TRAYMSGWND, $FLASHTIMERID)
SetTimer($TRAYMSGWND, $FLASHTIMERID, $FLASHTIMEOUT, 0)
EndFunc
Func _GUICtrlCreateODMenuItem($sMenuItemText, $nParentMenu, $sIconFile = "", $nIconID = 0, $bRadio = 0)
Local $nMenuItem = GUICtrlCreateMenuItem($sMenuItemText, $nParentMenu, -1, $bRadio)
$nIconID = _GetIconID($nIconID, $sIconFile)
If $nMenuItem > 0 Then
Local $nIdx = _GetNewItemIndex()
If $nIdx = 0 Then Return 0
$MENULASTITEM = $nMenuItem
Local $hMenu = GUICtrlGetHandle($nParentMenu)
$arMenuItems[$nIdx][0] = $nMenuItem
$arMenuItems[$nIdx][1] = $sMenuItemText
$arMenuItems[$nIdx][2] = _AddMenuIcon($sIconFile, $nIconID)
$arMenuItems[$nIdx][3] = $hMenu
$arMenuItems[$nIdx][4] = $bRadio
$arMenuItems[$nIdx][5] = FALSE
$arMenuItems[$nIdx][6] = -1
$arMenuItems[$nIdx][7] = FALSE
_SetOwnerDrawn($hMenu, $nMenuItem, $sMenuItemText)
EndIf
Return $nMenuItem
EndFunc
Func _GUICtrlCreateODMenu($sText, $nParentMenu, $sIconFile = "", $nIconID = 0)
Local $nMenu = GUICtrlCreateMenu($sText, $nParentMenu)
$nIconID = _GetIconID($nIconID, $sIconFile)
If $nMenu > 0 Then
Local $nIdx = _GetNewItemIndex()
If $nIdx = 0 Then Return 0
$MENULASTITEM = $nMenu
Local $hMenu = GUICtrlGetHandle($nParentMenu)
$arMenuItems[$nIdx][0] = $nMenu
$arMenuItems[$nIdx][1] = $sText
$arMenuItems[$nIdx][2] = _AddMenuIcon($sIconFile, $nIconID)
$arMenuItems[$nIdx][3] = $hMenu
$arMenuItems[$nIdx][4] = 0
$arMenuItems[$nIdx][5] = FALSE
$arMenuItems[$nIdx][6] = -1
$arMenuItems[$nIdx][7] = TRUE
_SetOwnerDrawn($hMenu, $nMenu, $sText)
EndIf
Return $nMenu
EndFunc
Func _AddMenuIcon($sIconFile, $nIconID)
Local $stIcon = DllStructCreate("hwnd")
Local $nCount = ExtractIconExW($sIconFile, $nIconID, 0, DllStructGetPtr($stIcon), 1)
Local $nIndex = -1
If $nCount > 0 Then
$nIndex = ImageList_AddIcon($hMenuImageList, DllStructGetData($stIcon, 1))
DestroyIcon(DllStructGetData($stIcon, 1))
EndIf
$stIcon = 0
Return $nIndex
EndFunc
Func _GetMenuHandle($nMenuItemID)
Local $i, $hMenu = 0
For $i = 1 To $arMenuItems[0][0]
If $arMenuItems[$i][0] = $nMenuItemID Then
$hMenu = $arMenuItems[$i][3]
ExitLoop
EndIf
Next
Return $hMenu
EndFunc
Func _GetMenuText($nMenuItemID)
Local $i, $sText = ""
For $i = 1 To $arMenuItems[0][0]
If $arMenuItems[$i][0] = $nMenuItemID Then
$sText = $arMenuItems[$i][1]
ExitLoop
EndIf
Next
Return $sText
EndFunc
Func _CreateSideMenu($nMenuID)
If $nMenuID <= 0 Then Return 0
Local $hMenu = GUICtrlGetHandle($nMenuID)
If $hMenu = 0 Then Return 0
Local $i = _GetNewSideItemIndex()
If $i = 0 Then Return 0
$arSideItems[$i][0] = $hMenu
$arSideItems[$i][1] = ""
$arSideItems[$i][2] = -1
$arSideItems[$i][3] = -1
$arSideItems[$i][4] = -1
$arSideItems[$i][5] = FALSE
$arSideItems[$i][6] = 0
$arSideItems[$i][7] = 0
$arSideItems[$i][8] = 0
$arSideItems[$i][9] = FALSE
Return $i
EndFunc
Func _IsSideMenuIdx($nIdx)
If $nIdx <= 0 Or $nIdx > $arSideItems[0][0] Then Return FALSE
If $arSideItems[$nIdx][0] = 0 Then Return FALSE
Return TRUE
EndFunc
Func _GetSideMenuIndex($hMenu)
Local $i
For $i = 1 To $arSideItems[0][0]
If $arSideItems[$i][0] = $hMenu Then
Return $i
ExitLoop
EndIf
Next
Return 0
EndFunc
Func _GetSideMenuText($nIdx)
If Not _IsSideMenuIdx($nIdx) Then Return ""
Return $arSideItems[$nIdx][1]
EndFunc
Func _GetSideMenuImage($nIdx)
If Not _IsSideMenuIdx($nIdx) Then Return 0
If Not $arSideItems[$nIdx][5] Then Return 0
Return $arSideItems[$nIdx][6]
EndFunc
Func _GetSideMenuImageSize($nIdx, ByRef $nWidth, ByRef $nHeight, ByRef $bStretch)
If Not _IsSideMenuIdx($nIdx) Then Return FALSE
If Not $arSideItems[$nIdx][5] Then Return FALSE
$nWidth = $arSideItems[$nIdx][7]
$nHeight = $arSideItems[$nIdx][8]
$bStretch = $arSideItems[$nIdx][9]
Return TRUE
EndFunc
Func _SetSideMenuText($nIdx, $sText, $sResName = "", $bIsBitmap = FALSE, $bStretch = FALSE)
If Not _IsSideMenuIdx($nIdx) Then Return FALSE
Local $i
Local $hBitmap = 0
Local $nW = 0
Local $nH = 0
If $bIsBitmap Then
Local $stFile = DllStructCreate("wchar[" & StringLen($sText) + 1 & "]")
DllStructSetData($stFile, 1, $sText)
If $sResName = "" Then
$hBitmap = LoadImageW(0, DllStructGetPtr($stFile), 0, 0, 0, _
BitOr(0x0010, 0x0040, 0x2000, 0x0020))
Else
Local $hLib = LoadLibraryExW(DllStructGetPtr($stFile), 0, 0x00000002)
If $hLib <> 0 Then
If IsNumber($sResName) Then
$hBitmap = LoadImageW($hLib, $sResName, 0, 0, 0, _
BitOr(0x0040, 0x2000, 0x0020))
Else
Local $stRes = DllStructCreate("wchar[" & StringLen($sResName) + 1 & "]")
DllStructSetData($stRes, 1, $sResName)
$hBitmap = LoadImageW($hLib, DllStructGetPtr($stRes), 0, 0, 0, _
BitOr(0x0040, 0x2000, 0x0020))
EndIf
FreeLibrary($hLib)
EndIf
EndIf
If $hBitmap = 0 Then
Return FALSE
Else
Local $nSize = GetObjectW($hBitmap, 0, 0)
Local $stBMP = DllStructCreate("long;long;long;long;ushort;ushort")
If GetObjectW($hBitmap, $nSize, DllStructGetPtr($stBMP)) = 0 Then
DeleteObject($hBitmap)
Return FALSE
Else
$nW = DllStructGetData($stBMP, 2)
$nH = DllStructGetData($stBMP, 3)
EndIf
EndIf
EndIf
$arSideItems[$nIdx][1] = $sText
If $bIsBitmap Then
If $arSideItems[$nIdx][5] <> 0 Then DeleteObject($arSideItems[$nIdx][5])
$arSideItems[$nIdx][5] = TRUE
$arSideItems[$nIdx][6] = $hBitmap
$arSideItems[$nIdx][7] = $nW
$arSideItems[$nIdx][8] = $nH
If $bStretch Then
$arSideItems[$nIdx][9] = TRUE
Else
$arSideItems[$nIdx][9] = FALSE
EndIf
Else
$arSideItems[$nIdx][5] = FALSE
$arSideItems[$nIdx][6] = 0
EndIf
Return TRUE
EndFunc
Func _SetSideMenuColors($nIdx, $nColor = -1, $nBkColor = -1, $nBkGrdColor = -1)
If Not _IsSideMenuIdx($nIdx) Then Return FALSE
If $nColor <> -1 Then
If $nColor = -2 Then
$arSideItems[$nIdx][2] = $nMenuSideTxtClr
Else
$arSideItems[$nIdx][2] = $nColor
EndIf
EndIf
If $nBkColor <> -1 Then
If $nBkColor = -2 Then
$arSideItems[$nIdx][3] = $nMenuSideBkClr
Else
$arSideItems[$nIdx][3] = $nBkColor
EndIf
EndIf
If $nBkGrdColor <> -1 Then
If $nBkGrdColor = -2 Then
$arSideItems[$nIdx][4] = $nMenuSideBkClr2
Else
$arSideItems[$nIdx][4] = $nBkGrdColor
EndIf
EndIf
Return 1
EndFunc
Func _GetSideMenuColors($nIdx, ByRef $nColor, ByRef $nBkColor, ByRef $nBkGradColor)
If $nIdx = 0 Then Return 0
$nColor = $arSideItems[$nIdx][2]
$nBkColor = $arSideItems[$nIdx][3]
$nBkGradColor = $arSideItems[$nIdx][4]
Return 1
EndFunc
Func _GetMenuMaxTextWidth($hDC, $hMenu, ByRef $nMaxWidth, ByRef $nMaxAccWidth)
Local $i, $stSize, $stText, $nLen, $nAccLen
Local $nWidth = 0
Local $nAccWidth = 0
Local $arString
For $i = 1 To $arMenuItems[0][0]
If $arMenuItems[$i][3] = $hMenu Then
$arString = StringSplit($arMenuItems[$i][1], @Tab)
If Not IsArray($arString) Then ContinueLoop
If $arString[0] > 1 Then
$nLen = StringLen($arString[2])
$stSize = DllStructCreate("int;int")
$stText = DllStructCreate("wchar[" & $nLen + 1 & "]")
DllStructSetData($stText, 1, $arString[2])
GetTextExtentPoint32W($hDC, DllStructGetPtr($stText), $nLen, DllStructGetPtr($stSize))
$nAccWidth = DllStructGetData($stSize, 1)
$stText = 0
$stSize = 0
If $nAccWidth > $nMaxAccWidth Then $nMaxAccWidth = $nAccWidth
EndIf
$nLen = StringLen($arString[1])
$stSize = DllStructCreate("int;int")
$stText = DllStructCreate("wchar[" & $nLen + 1 & "]")
DllStructSetData($stText, 1, $arString[1])
GetTextExtentPoint32W($hDC, DllStructGetPtr($stText), $nLen, DllStructGetPtr($stSize))
$nWidth = DllStructGetData($stSize, 1)
$stText = 0
$stSize = 0
If $nWidth > $nMaxWidth Then $nMaxWidth = $nWidth
EndIf
Next
EndFunc
Func _GetSideMenuTextWidth($hDC, $sText)
If $sText = "" Then Return 0
Local $nLen = StringLen($sText)
Local $stSize = DllStructCreate("int;int")
Local $stText = DllStructCreate("wchar[" & $nLen + 1 & "]")
DllStructSetData($stText, 1, $sText)
GetTextExtentPoint32W($hDC, DllStructGetPtr($stText), $nLen, DllStructGetPtr($stSize))
Return DllStructGetData($stSize, 2)
EndFunc
Func _GetMenuIsRadio($nMenuItemID)
Local $i, $bRadio = 0
For $i = 1 To $arMenuItems[0][0]
If $arMenuItems[$i][0] = $nMenuItemID Then
$bRadio = $arMenuItems[$i][4]
ExitLoop
EndIf
Next
Return $bRadio
EndFunc
Func _GetMenuIconIndex($nMenuItemID, ByRef $nIconIndex, ByRef $nSelIconIndex)
Local $i
For $i = 1 To $arMenuItems[0][0]
If $arMenuItems[$i][0] = $nMenuItemID Then
$nIconIndex = $arMenuItems[$i][2]
$nSelIconIndex = $arMenuItems[$i][6]
ExitLoop
EndIf
Next
EndFunc
Func _IsTrayItem($nMenuItemID)
Local $i, $bTray = FALSE
For $i = 1 To $arMenuItems[0][0]
If $arMenuItems[$i][0] = $nMenuItemID Then
$bTray = $arMenuItems[$i][5]
ExitLoop
EndIf
Next
Return $bTray
EndFunc
Func _GetMenuInfos(ByRef $nS, ByRef $nX)
$nS = GetSystemMetrics(49)
$nX = GetSystemMetrics(71)
EndFunc
Func _SetOwnerDrawn($hMenu, $MenuItemID, $sText, $bOwnerDrawn = TRUE)
Local $nType = 0
If StringLen($sText) = 0 Then $nType = 0x00000800
If $bOwnerDrawn Then $nType = BitOr($nType, 0x00000100)
Local $stMII = DllStructCreate($sMENUITEMINFO)
DllStructSetData($stMII, 1, DllStructGetSize($stMII))
DllStructSetData($stMII, 2, 0x00000010)
DllStructSetData($stMII, 3, $nType)
Local $stTypeData = DllStructCreate("uint")
DllStructSetData($stTypeData, 1, $MenuItemID)
DllStructSetData($stMII, 10, DllStructGetPtr($stTypeData))
SetMenuItemInfo($hMenu, $MenuItemID, FALSE, DllStructGetPtr($stMII))
EndFunc
Func _CreateMenuFont(ByRef $hFont, $bBold = FALSE, $bSide = FALSE)
Local $stNCM = DllStructCreate($sNONCLIENTMETRICS)
DllStructSetData($stNCM, 1, DllStructGetSize($stNCM))
If SystemParametersInfo(0x0029, DllStructGetSize($stNCM), DllStructGetPtr($stNCM), 0) Then
Local $stMenuLogFont = DllStructCreate($sLOGFONT)
Local $i
For $i = 1 To 14
DllStructSetData($stMenuLogFont, $i, DllStructGetData($stNCM, $i + 38))
Next
If $bSide Then
DllStructSetData($stMenuLogFont, 3, 900)
DllStructSetData($stMenuLogFont, 4, 900)
EndIf
If $bBold Then DllStructSetData($stMenuLogFont, 5, 700)
If $hFont > 0 Then DeleteObject($hFont)
$hFont = CreateFontIndirect(DllStructGetPtr($stMenuLogFont))
If $hFont = 0 Then $hFont = _CreateMenuFontByName("MS Sans Serif")
EndIf
EndFunc
Func _CreateMenuFontByName($sFontName, $nHeight = 8, $nWidth = 400)
Local $stFontName = DllStructCreate("char[260]")
DllStructSetData($stFontName, 1, $sFontName)
Local $hDC = GetDC(0)
Local $nPixel = GetDeviceCaps($hDC, 90)
$nHeight = 0 - MulDiv($nHeight, $nPixel, 72)
ReleaseDC(0, $hDC)
Local $hFont = CreateFont($nHeight, _
0, _
0, _
0, _
$nWidth, _
0, _
0, _
0, _
0, _
0, _
0, _
0, _
0, _
DllStructGetPtr($stFontName))
$stFontName = 0
Return $hFont
EndFunc
Func _CreateBlankIcon()
If $hBlankIcon = 0 Then
If @OSVersion = "WIN_VISTA" Or @OSVersion = "WIN_2008" Then
Local $stIcon = DllStructCreate("hwnd")
If ExtractIconExW("shell32.dll", 50, 0, DllStructGetPtr($stIcon), 1) Then _
$hBlankIcon = DllStructGetData($stIcon, 1)
Else
Local $stAndMask = DllStructCreate("byte[64]")
memset(DllStructGetPtr($stAndMask), 0xFF, 64)
Local $stXorMask = DllStructCreate("byte[64]")
memset(DllStructGetPtr($stXorMask), 0x0, 64)
$hBlankIcon = CreateIcon(0, 16, 16, 1, 1, DllStructGetPtr($stAndMask), DllStructGetPtr($stXorMask))
EndIf
EndIf
Return $hBlankIcon
EndFunc
Func ImageList_Create($nImageWidth, $nImageHeight, $nFlags, $nInitial, $nGrow)
Local $hImageList = DllCall($hComctl32Dll, "hwnd", "ImageList_Create", _
"int", $nImageWidth, _
"int", $nImageHeight, _
"int", $nFlags, _
"int", $nInitial, _
"int", $nGrow)
Return $hImageList[0]
EndFunc
Func ImageList_AddIcon($hIml, $hIcon)
Local $nIndex = DllCall($hComctl32Dll, "int", "ImageList_AddIcon", _
"hwnd", $hIml, _
"hwnd", $hIcon)
Return $nIndex[0]
EndFunc
Func ImageList_Destroy($hIml)
Local $bResult = DllCall($hComctl32Dll, "int", "ImageList_Destroy", _
"hwnd", $hIml)
EndFunc
Func ImageList_Draw($hIml, $nIndex, $hDC, $nX, $nY, $nStyle)
Local $bResult = DllCall($hComctl32Dll, "int", "ImageList_Draw", _
"hwnd", $hIml, _
"int", $nIndex, _
"hwnd", $hDC, _
"int", $nX, _
"int", $nY, _
"int", $nStyle)
Return $bResult[0]
EndFunc
Func ImageList_DrawEx($hIml, $nIndex, $hDC, $nX, $nY, $nDx, $nDy, $nBkClr, $nFgClr, $nStyle)
Local $bResult = DllCall($hComctl32Dll, "int", "ImageList_DrawEx", _
"hwnd", $hIml, _
"int", $nIndex, _
"hwnd", $hDC, _
"int", $nX, _
"int", $nY, _
"int", $nDx, _
"int", $nDy, _
"int", $nBkClr, _
"int", $nFgClr, _
"int", $nStyle)
Return $bResult[0]
EndFunc
Func ExtractIconExW($sIconFile, $nIconID, $ptrIconLarge, $ptrIconSmall, $nIcons)
Local $nCount = DllCall($hShell32Dll, "int", "ExtractIconExW", _
"wstr", $sIconFile, _
"int", $nIconID, _
"ptr", $ptrIconLarge, _
"ptr", $ptrIconSmall, _
"int", $nIcons)
Return $nCount[0]
EndFunc
Func Shell_NotifyIcon($nMessage, $pNID)
Local $nResult = DllCall($hShell32Dll, "int", "Shell_NotifyIconW", _
"int", $nMessage, _
"ptr", $pNID)
Return $nResult[0]
EndFunc
Func MulDiv($nInt1, $nInt2, $nInt3)
$nResult = DllCall("kernel32.dll", "int", "MulDiv", _
"int", $nInt1, _
"int", $nInt2, _
"int", $nInt3)
Return $nResult[0]
EndFunc
Func LoadLibraryExW($pFile, $hFile, $nFlags)
$hResult = DllCall($hKernel32Dll, "hwnd", "LoadLibraryExW", _
"ptr", $pFile, _
"hwnd", $hFile, _
"dword", $nFlags)
Return $hResult[0]
EndFunc
Func FreeLibrary($hLib)
$nResult = DllCall($hKernel32Dll, "int", "FreeLibrary", _
"hwnd", $hLib)
Return $nResult[0]
EndFunc
Func SelectObject($hDC, $hObj)
Local $hOldObj = DllCall($hGdi32Dll, "int", "SelectObject", _
"hwnd", $hDC, _
"hwnd", $hObj)
Return $hOldObj[0]
EndFunc
Func DeleteObject($hObj)
Local $bResult = DllCall($hGdi32Dll, "int", "DeleteObject", _
"hwnd", $hObj)
EndFunc
Func GetObjectW($hObj, $nSize, $pObj)
Local $nResult = DllCall($hGdi32Dll, "int", "GetObjectW", _
"hwnd", $hObj, _
"int", $nSize, _
"ptr", $pObj)
Return $nResult[0]
EndFunc
Func CreateFont($nHeight, $nWidth, $nEscape, $nOrientn, $fnWeight, $bItalic, $bUnderline, $bStrikeout, $nCharset, $nOutputPrec, $nClipPrec, $nQuality, $nPitch, $ptrFontName)
Local $hFont = DllCall($hGdi32Dll, "hwnd", "CreateFont", _
"int", $nHeight, _
"int", $nWidth, _
"int", $nEscape, _
"int", $nOrientn, _
"int", $fnWeight, _
"long", $bItalic, _
"long", $bUnderline, _
"long", $bStrikeout, _
"long", $nCharset, _
"long", $nOutputPrec, _
"long", $nClipPrec, _
"long", $nQuality, _
"long", $nPitch, _
"ptr", $ptrFontName)
Return $hFont[0]
EndFunc
Func CreateFontIndirect($pLogFont)
Local $hFont = DllCall($hGdi32Dll, "hwnd", "CreateFontIndirectW", _
"ptr", $pLogFont)
Return $hFont[0]
EndFunc
Func GetTextExtentPoint32W($hDC, $ptrText, $nTextLength, $ptrSize)
Local $bResult = DllCall($hGdi32Dll, "int", "GetTextExtentPoint32W", _
"hwnd" ,$hDC, _
"ptr", $ptrText, _
"int", $nTextLength, _
"ptr", $ptrSize)
Return $bResult[0]
EndFunc
Func SetBkColor($hDC, $nColor)
Local $nOldColor = DllCall($hGdi32Dll, "int", "SetBkColor", _
"hwnd", $hDC, _
"int", $nColor)
Return $nOldColor[0]
EndFunc
Func SetTextColor($hDC, $nColor)
Local $nOldColor = DllCall($hGdi32Dll, "int", "SetTextColor", _
"hwnd", $hDC, _
"int", $nColor)
Return $nOldColor[0]
EndFunc
Func CreateSolidBrush($nColor)
Local $hBrush = DllCall($hGdi32Dll, "hwnd", "CreateSolidBrush", _
"int", $nColor)
Return $hBrush[0]
EndFunc
Func GetDeviceCaps($hDC, $nIndex)
Local $nResult = DllCall($hGdi32Dll, "int", "GetDeviceCaps", _
"hwnd", $hDC, _
"int", $nIndex)
Return $nResult[0]
EndFunc
Func CreateCompatibleDC($hDC)
Local $hCompDC = DllCall($hGdi32Dll, "hwnd", "CreateCompatibleDC", _
"hwnd", $hDC)
Return $hCompDC[0]
EndFunc
Func DeleteDC($hDC)
Local $bResult = DllCall($hGdi32Dll, "int", "DeleteDC", _
"hwnd", $hDC)
Return $bResult[0]
EndFunc
Func CreateBitmap($nWidth, $nHeight, $nCPlanes, $nCBitsPerPixel, $ptrCData)
Local $hBitmap = DllCall($hGdi32Dll, "hwnd", "CreateBitmap", _
"int", $nWidth, _
"int", $nHeight, _
"int", $nCPlanes, _
"int", $nCBitsPerPixel, _
"ptr", $ptrCData)
Return $hBitmap[0]
EndFunc
Func BitBlt($hDCDest, $nXDest, $nYDest, $nWDest, $nHDest, $hDCSrc, $nXSrc, $nYSrc, $nOpCode)
Local $bResult = DllCall($hGdi32Dll, "int", "BitBlt", _
"hwnd", $hDCDest, _
"int", $nXDest, _
"int", $nYDest, _
"int", $nWDest, _
"int", $nHDest, _
"hwnd", $hDCSrc, _
"int", $nXSrc, _
"int", $nYSrc, _
"long", $nOpCode)
Return $bResult[0]
EndFunc
Func StretchBlt($hDCDest, $nXDest, $nYDest, $nWDest, $nHDest, $hDCSrc, $nXSrc, $nYSrc, $nWSrc, $nHSrc, $nOpCode)
Local $bResult = DllCall($hGdi32Dll, "int", "StretchBlt", _
"hwnd", $hDCDest, _
"int", $nXDest, _
"int", $nYDest, _
"int", $nWDest, _
"int", $nHDest, _
"hwnd", $hDCSrc, _
"int", $nXSrc, _
"int", $nYSrc, _
"int", $nWSrc, _
"int", $nHSrc, _
"long", $nOpCode)
Return $bResult[0]
EndFunc
Func SetBkMode($hDC, $nMode)
Local $nResult = DllCall($hGdi32Dll, "int", "SetBkMode", _
"hwnd", $hDC, _
"int", $nMode)
Return $nResult[0]
EndFunc
Func GradientFill($hDC, $pVert, $nNumVert, $pRect, $nNumRect, $nFillMode)
Local $nResult = DllCall($hMsimg32Dll, "int", "GradientFill", _
"hwnd", $hDC, _
"ptr", $pVert, _
"ulong", $nNumVert, _
"ptr", $pRect, _
"ulong", $nNumRect, _
"ulong", $nFillMode)
Return $nResult[0]
EndFunc
Func GetDC($hWnd)
Local $hDC = DllCall($hUser32Dll, "hwnd", "GetDC", _
"hwnd", $hWnd)
Return $hDC[0]
EndFunc
Func ReleaseDC($hWnd, $hDC)
Local $bResult = DllCall($hUser32Dll, "int", "ReleaseDC", _
"hwnd", $hWnd, _
"hwnd", $hDC)
Return $bResult[0]
EndFunc
Func GetSysColor($nIndex)
Local $nColor = DllCall($hUser32Dll, "int", "GetSysColor", _
"int", $nIndex)
Return $nColor[0]
EndFunc
Func GetSysColorBrush($nIndex)
Local $hBrush = DllCall($hUser32Dll, "hwnd", "GetSysColorBrush", _
"int", $nIndex)
Return $hBrush[0]
EndFunc
Func LoadIcon($hInstance, $nIcon)
Local $hIcon = DllCall($hUser32Dll, "hwnd", "LoadIcon", _
"hwnd", $hInstance, _
"int", $nIcon)
Return $hIcon[0]
EndFunc
Func DestroyIcon($hIcon)
Local $bResult = DllCall($hUser32Dll, "int", "DestroyIcon", _
"hwnd", $hIcon)
Return $bResult[0]
EndFunc
Func CreateIcon($hInstance, $nWidth, $nHeight, $nPlanes, $nBitsPixel, $pAndBits, $pXorBits)
Local $hResult = DllCall($hUser32Dll, "hwnd", "CreateIcon", _
"hwnd", $hInstance, _
"int", $nWidth, _
"int", $nHeight, _
"byte", $nPlanes, _
"byte", $nBitsPixel, _
"ptr", $pAndBits, _
"ptr", $pXorBits)
Return $hResult[0]
EndFunc
Func GetSystemMetrics($nIndex)
Local $nResult = DllCall($hUser32Dll, "int", "GetSystemMetrics", _
"int", $nIndex)
Return $nResult[0]
EndFunc
Func DrawTextW($hDC, $ptrText, $nLenText, $ptrRect, $nFlags)
Local $nHeight = DllCall($hUser32Dll, "int", "DrawTextW", _
"hwnd", $hDC, _
"ptr", $ptrText, _
"int", $nLenText, _
"ptr", $ptrRect, _
"int", $nFlags)
Return $nHeight[0]
EndFunc
Func GetMenuItemCount($hMenu)
Local $nCount = DllCall($hUser32Dll, "int", "GetMenuItemCount", _
"hwnd", $hMenu)
Return $nCount[0]
EndFunc
Func GetMenuItemID($hMenu, $nPos)
Local $nID = DllCall($hUser32Dll, "int", "GetMenuItemID", _
"hwnd", $hMenu, _
"int", $nPos)
Return $nID[0]
EndFunc
Func GetMenuItemInfo($hMenu, $nID, $bPos, $pMII)
Local $nResult = DllCall($hUser32Dll, "int", "GetMenuItemInfo", _
"hwnd", $hMenu, _
"uint", $nID, _
"int", $bPos, _
"ptr", $pMII)
Return $nResult[0]
EndFunc
Func SetMenuItemInfo($hMenu, $nID, $bPos, $pMII)
Local $nResult = DllCall($hUser32Dll, "int", "SetMenuItemInfo", _
"hwnd", $hMenu, _
"uint", $nID, _
"int", $bPos, _
"ptr", $pMII)
Return $nResult[0]
EndFunc
Func GetMenuState($hMenu, $nID, $nFlags)
Local $nState = DllCall($hUser32Dll, "int", "GetMenuState", _
"hwnd", $hMenu, _
"int", $nID, _
"int", $nFlags)
Return $nState[0]
EndFunc
Func FillRect($hDC, $ptrRect, $hBrush)
Local $bResult = DllCall($hUser32Dll, "int", "FillRect", _
"hwnd", $hDC, _
"ptr", $ptrRect, _
"hwnd", $hBrush)
Return $bResult[0]
EndFunc
Func DrawEdge($hDC, $ptrRect, $nEdgeType, $nBorderFlag)
Local $bResult = DllCall($hUser32Dll, "int", "DrawEdge", _
"hwnd", $hDC, _
"ptr", $ptrRect, _
"int", $nEdgeType, _
"int", $nBorderFlag)
Return $bResult[0]
EndFunc
Func FrameRect($hDC, $ptrRect, $hBrush)
Local $bResult = DllCall($hUser32Dll, "int", "FrameRect", _
"hwnd", $hDC, _
"ptr", $ptrRect, _
"hwnd", $hBrush)
Return $bResult[0]
EndFunc
Func DrawFrameControl($hDC, $ptrRect, $nType, $nState)
Local $bResult = DllCall($hUser32Dll, "int", "DrawFrameControl", _
"hwnd", $hDC, _
"ptr", $ptrRect, _
"int", $nType, _
"int", $nState)
Return $bResult[0]
EndFunc
Func SystemParametersInfo($nAction, $nParam, $pParam, $nWinini)
Local $nResult = DllCall($hUser32Dll, "int", "SystemParametersInfoW", _
"uint", $nAction, _
"uint", $nParam, _
"ptr", $pParam, _
"uint", $nWinini)
Return $nResult[0]
EndFunc
Func GetCursorPos($pPoint)
Local $nResult = DllCall($hUser32Dll, "int", "GetCursorPos", _
"ptr", $pPoint)
Return $nResult[0]
EndFunc
Func SetForegroundWindow($hWnd)
Local $nResult = DllCall($hUser32Dll, "int", "SetForegroundWindow", _
"hwnd", $hWnd)
Return $nResult[0]
EndFunc
Func TrackPopupMenuEx($hMenu, $nFlags, $nX, $nY, $hWnd, $pParams)
Local $nResult = DllCall($hUser32Dll, "int", "TrackPopupMenuEx", _
"hwnd", $hMenu, _
"uint", $nFlags, _
"int", $nX, _
"int", $nY, _
"hwnd", $hWnd, _
"ptr", $pParams)
Return $nResult[0]
EndFunc
Func PostMessage($hWnd, $nMsg, $wParam, $lParam)
Local $nResult = DllCall($hUser32Dll, "int", "PostMessage", _
"hwnd", $hWnd, _
"uint", $nMsg, _
"dword", $wParam, _
"dword", $lParam)
Return $nResult[0]
EndFunc
Func ShowWindow($hWnd, $nState)
DllCall($hUser32Dll, "int", "ShowWindow", _
"hwnd", $hWnd, _
"int", $nState)
EndFunc
Func SetTimer($hWnd, $nID, $nTimeOut, $pFunc)
Local $nResult = DllCall($hUser32Dll, "uint", "SetTimer", _
"hwnd", $hWnd, _
"uint", $nID, _
"uint", $nTimeOut, _
"ptr", $pFunc)
Return $nResult[0]
EndFunc
Func KillTimer($hWnd, $nID)
Local $nResult = DllCall($hUser32Dll, "int", "KillTimer", _
"hwnd", $hWnd, _
"uint", $nID)
Return $nResult[0]
EndFunc
Func LoadImageW($hInst, $pName, $nType, $nX, $nY, $nLoad)
Local $hResult = DllCall($hUser32Dll, "hwnd", "LoadImageW", _
"hwnd", $hInst, _
"dword", $pName, _
"uint", $nType, _
"int", $nX, _
"int", $nY, _
"uint", $nLoad)
Return $hResult[0]
EndFunc
Func memset($pDest, $nChr, $nCount)
Local $pResult = DllCall("msvcrt.dll", "ptr:cdecl", "memset", _
"ptr", $pDest, _
"int", $nChr, _
"int", $nCount)
Return $pResult[0]
EndFunc
If @Compiled = 0 Then
AutoItSetOption("TrayIconHide", 0)
AutoItSetOption("TrayIconDebug", 1)
EndIf
AutoItSetOption("MouseCoordMode", 0)
AutoItSetOption("GUICloseOnESC", 1)
AutoItSetOption("GUIOnEventMode", 1)
AutoItSetOption("WinTitleMatchMode", 4)
Dim $Chk[15] = ["CDROM", "RAMDISK", "NETWORK", "REMOVABLE", "CARD", "CAMERA", "VIDCAM", "MP3", "FIXED", "OS", "USB", "FIRE", "ZIP", "FLOPPY", "FLASH"]
Dim $IconArray[15][15] = [ _
[196, 197, 198, 199, 200, 201, 202, 203, -1, -1, -1, -1, -1, -1, "Icon_32"], _
[000, 001, 002, 003, 004, 005, 006, 007, 008, 009, 010, 011, 012, 013, "Icon_23"], _
[014, 015, 016, 017, 018, 019, 020, 021, 022, 023, 024, 025, 026, 027, "Icon_24"], _
[028, 029, 030, 031, 032, 033, 034, 035, 036, 037, 038, 039, 040, 041, "Icon_10"], _
[042, 043, 044, 045, 046, 047, 048, 049, 050, 051, 052, 053, 054, 055, "Icon_12"], _
[056, 057, 058, 059, 060, 061, 062, 063, 064, 065, 066, 067, 068, 069, "Icon_13"], _
[070, 071, 072, 073, 074, 075, 076, 077, 078, 079, 080, 081, 082, 083, "Icon_14"], _
[084, 085, 086, 087, 088, 089, 090, 091, 092, 093, 094, 095, 096, 097, "Icon_11"], _
[098, 099, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, "Icon_01"], _
[112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, "Icon_00"], _
[126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, "Icon_02"], _
[140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, "Icon_03"], _
[154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, "Icon_22"], _
[168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, "Icon_04"], _
[182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, "Icon_31"]]
Dim $Image[4][5] = [[$IconArray[09][03], $IconArray[08][05], $IconArray[10][09], $IconArray[11][12], $IconArray[13][04]], _
[$IconArray[03][08], $IconArray[07][13], $IconArray[04][02], $IconArray[05][01], $IconArray[06][13]], _
[$IconArray[00][01], $IconArray[00][02], $IconArray[12][07], $IconArray[01][08], $IconArray[02][10]], _
[$IconArray[14][05]]]
Dim $ext[1][3] = [["CLSID\{2B3453E4-49DF-11D3-8229-0080BE509050}", $IconArray[0][7], 8]]
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
Dim $MinVal[11] = [0, 1, 2, 3, 5, 10, 15, 20, 30, 60, 1000000], $Per[14] = [0, 0, 8, 16, 25, 33, 41, 50, 58, 66, 75, 83, 91, 100]
Dim $GUI = 0, $GUI2 = 0, $BOX[60], $LANG_LIST, $LANG_SEL, $LANG_FILE, $THEME_LIST, $THEME_SEL, $THEME_FILE
Dim $PROG_ID = "D5902C4BE60D4234E361443265F260D2B8A28A73", $PNP_DIAG, $TRAY[27][20], $FLOPPY, $PNP[27][3]
Dim $NETWORK, $CYCLES = 1, $DEL_ICONS, $DAILY = 0, $PROGTRAY[13], $LIBICON, $MIN, $RUN, $FLOPPY_BAR
Dim $BMON = 1, $UPDATE, $WEBSITE = "http://xptsp.filetap.com/DSI/", $BETA = 0, $NO_BAR, $MDrv, $OS
Dim $PAUSED = False, $ProgTray_BUILT = 0, $DWAR = "", $DRV_SEL = "", $MONITOR, $DIAG = "", $Timer[5], $CONFIG = _Iif(@Compiled = 0, 2, 0)
Dim $CHANGES = 0, $ALLDRIVE = 0, $MANAGE = 0, $MANAGE_DIR = "", $SC[1][2], $LV[2][5], $DIAG_GUI[2]
Dim $MENU[100], $GUI_ONLY = False, $DIR = "", $SDIR = $TITLE, $ARun, $z1, $SVCPACK = 0, $DELAY = 0
Dim $CabLiteDll = DllOpen(@ScriptDir & "\CabLite.dll"), $CLSID = "{4EFF15C8-3A43-401B-B45F-C68BB634062C}"
FileChangeDir(@ScriptDir)
$MDrv = RegRead("HKLM" & $PROC & "\SYSTEM\CurrentControlSet\Services\ShellHWDetection", "Start")
If @error Then
$DWAR = "INFO: Shell Hardware Detection service not installed"
Else
If $MDrv <> 2 Then $DWAR = "INFO: Shell Hardware Detection service not set to Auto"
EndIf
_Language_Load()
$LANG_SEL = RegRead($KEY, "Language")
If @error <> 0 Or StringInStr($LANG_FILE, $LANG_SEL) = 0 Then $LANG_SEL = "Auto"
If $LANG_SEL = "Auto" Then _Language_AutoSelect()
_Language_GetStrings()
$MIN = RegRead($KEY, "Minutes")
If @error <> 0 Then $MIN = 60
$MIN = _Check_Min($MIN)
$DAILY = RegRead($KEY, "Check_Daily")
If @error <> 0 Then $DAILY = 0
$DELAY = RegRead($KEY, "Startup_Delay")
If @error <> 0 Then $DELAY = 2
$DELAY = _Max(0, _Min(9, $DELAY))
$FLOPPY_BAR = RegRead($KEY, "Floppy_Bar")
If @error <> 0 Then $FLOPPY_BAR = 0
$NO_BAR = RegRead($KEY, "No_Bar")
If @error <> 0 Then $NO_BAR = 0
$PROGTRAY[0] = RegRead($KEY, "Program_Tray")
If @error <> 0 Then $PROGTRAY[0] = 1
$LIBICON = RegRead($KEY, "Library_Icon")
If @error <> 0 Then $LIBICON = 0
$DEL_ICONS = RegRead($KEY, "Delete_Icons")
If @error <> 0 Then $DEL_ICONS = 1
$SDIR = RegRead($KEY, "Shortcut_Dir")
If @error <> 0 Then $SDIR = $TITLE
$MDrv = RegRead($KEY, "Monitor")
$MDrv = StringReplace($MDrv, "%SystemDrive%", $HOME)
$Timer[3] = RegRead($KEY, "Next_Update")
If @error <> 0 Then $Timer[3] = _NowCalc()
$THEME_SEL = RegRead($KEY, "Library")
If @error <> 0 Then
$NETWORK = FileFindFirstFile(@WorkingDir & "\Themes\*.dll")
If $NETWORK = -1 Then _DisplayError(_ReadStr("THEME"))
$THEME_SEL = StringReplace(FileFindNextFile($NETWORK), ".dll", "")
FileClose($NETWORK)
$NETWORK = 0
EndIf
$MONITOR = RegRead($KEY, "Monitor_Shortcuts")
If @error <> 0 Then $MONITOR = 1
_Shortcut_Monitor()
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
_Theme_Load()
$Timer[1] = $MIN * 60000
$THEME_FILE = _Theme_File($THEME_SEL)
$RUN = RegRead($RUNKEY, "DriveSpace")
$RUN = _Iif(StringInStr($RUN, "DrvSpace") = 0, 0, 1)
If 1 = 0 Then _Tray_Callback(0, 0)
_Send_Message()
GUIRegisterMsg(0x0219, "_Msg_Media")
GUIRegisterMsg(0x8001, "_Msg_Show")
GUIRegisterMsg(0x8002, "_Msg_Exit")
GUIRegisterMsg(0x8003, "_Msg_Shortcut")
GUIRegisterMsg(0x0218, "_Msg_Power")
$nTaskBarCreated = DllCall("user32.dll", "uint", "RegisterWindowMessageA", "str", "TaskbarCreated")
GUIRegisterMsg($nTaskBarCreated[0], "_Msg_RecreateIcons")
If @OSVersion = "WIN_VISTA" Or @OSVersion = "WIN_7" Then
DllCall("user32.dll", "none", "ChangeWindowMessageFilter", "UINT", $nTaskBarCreated[0], "dword", 1)
EndIf
If @Compiled = 0 And $GUI_ONLY Then
GUI_Build()
While 1
Sleep(1000)
WEnd
EndIf
While 1
$DIAG = ""
If $BMON = 1 Then _PNP_Scan()
$PNP_DIAG = ""
$z = 0
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
If $i = 0 Then
$Type = _PNP_Get($Drv)
$ICON = RegRead($PNPKEY, $Type)
If @error Then $ICON = _Iif(StringInStr($Type, "DVD") <> 0, 2, 1)
RegWrite($PNPKEY, $Type, "REG_DWORD", $ICON)
If DriveStatus($Drv) = "READY" Then $ICON = _Iif(DriveSpaceTotal($Drv) <= 700, 4, 5)
$PNP_DIAG = $PNP_DIAG & StringUpper($Drv) & " = -" & $ICON & "," & $Type & @CR
$ICON = $IconArray[0][$ICON]
$ARun = ""
Else
If $i = 8 Then
$Type = _PNP_Get($Drv)
$G = RegRead($PNPKEY, $Type)
If @error Then $G = _Iif(StringLeft($Type, 3) = "USB", $i + 2, _Iif(StringLeft($Type, 4) = "1394", $i + 3, $i))
RegWrite($PNPKEY, $Type, "REG_DWORD", $G)
If $HOME = $Drv Then $G = $i + 1
$PNP_DIAG = $PNP_DIAG & StringUpper($Drv) & " = " & $G & "," & $Type & @CR
$ARun = _Iif(IniRead($Drv & "\AutoRun.INF", "AutoRun", "Icon", "") <> "", ", A=1", "")
ElseIf $i = 3 Then
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
$PU =($TS - $FS) / $TS * 100
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
_GUI_Drive_Icon()
_GUI_Diagnostics_Populate()
If $CONFIG = 1 Then
GUI_Build()
While $GUI <> 0
Sleep(1000)
WEnd
If MsgBox(0x24, $TITLE, _FormatStr("Main_06", $TITLE), 0, $GUI) = 7 Then Exit
$CONFIG = 0
ElseIf $CONFIG = 2 Then
GUI_Build()
EndIf
For $i = 0 To UBound($ext) - 1
If RegRead("HKCR" & $PROC & "\" & $ext[$i][0] & "\DefaultIcon", "") <> "" Then _
RegWrite("HKCR" & $PROC & "\" & $ext[$i][0] & "\DefaultIcon", "", "REG_SZ", $THEME_FILE & "," & $ext[$i][1])
Next
If $ProgTray_BUILT = 0 Then
Tray_Build()
Else
If $NO_BAR = 0 Then _Tray_Update()
EndIf
_Shortcut_UpdateAll()
_Update_Explorer()
If $CYCLES = 0 Then Exit
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
Func _MD5Hash($sFile)
Local $sBuffer = DllStructCreate("char[33]")
DllCall($CabLiteDll, 'dword', 'MD5FileHex', 'str', $sFile, 'ptr', DllStructGetPtr($sBuffer))
Local $sHash = DllStructGetData($sBuffer, 1)
$sBuffer = 0
Return($sHash)
EndFunc
Func _ExpandCab($sFile)
DirCreate(@TempDir & "\DSI")
Local $result = DllCall($CabLiteDll, "ushort", "CabExtract", "str", $sFile, "str", @TempDir & "\DSI", "ptr", 0)
If IsArray($result) Then Return $result[0]
Return SetError(1, 0, -1)
EndFunc
Func _Msg_Media($hWndGUI, $MsgID, $wParam, $lParam)
If $wParam = "0x00008000" Or $wParam = "0x00008004" Then
$Timer[0] = 1500
$BMON = 1
$NETWORK = 0
EndIf
EndFunc
Func _Msg_Show()
GUI_Build()
EndFunc
Func _Msg_Exit()
Tray_Exit()
EndFunc
Func _Msg_Shortcut()
_GUI_Shortcut_Populate()
EndFunc
Func _Msg_Power($hWnd, $Msg, $wParam, $lParam)
$PAUSED = _Iif($wParam = 0x04, True, False)
EndFunc
Func _Msg_RecreateIcons()
For $a = 1 To $TRAY[0][0]
_TrayIconSetState($TRAY[$a][4], 2)
If StringInStr($MDrv, $TRAY[$a][0], 2) <> 0 Then _TrayIconSetState($TRAY[$a][4], 1)
Next
EndFunc
Func _PNP_Scan()
Local $UsbDev, $Drv = DriveGetDrive("REMOVABLE"), $TS = ""
$FLOPPY = ""
If @error = 0 Then
For $y = 1 To $Drv[0]
$UsbDev = RegRead($MOUNT, "\DosDevices\" & $Drv[$y])
$UsbDev = _HexToString(StringReplace(StringReplace($UsbDev, "00", ""), "0x", ""))
If $UsbDev <> "" And StringInStr($UsbDev, "FDC#GENERIC_FLOPPY_DRIVE") <> 0 Then $FLOPPY = $FLOPPY & "|" & $Drv[$y]
Next
EndIf
Local $x = 1, $colItems, $y, $Antecedent, $Dependent
Const $wbemFlagReturnImmediately = 0x10, $wbemFlagForwardOnly = 0x20
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
$BMON = 0
EndFunc
Func _PNP_Get($TDrv, $Element = 1)
Local $a
$Element = _Max(0, _Min($Element, 2))
For $a = 1 To $PNP[0][0]
If $TDrv = $PNP[$a][0] Then Return $PNP[$a][$Element]
Next
Return _HexToString(StringReplace(StringReplace(RegRead($MOUNT, "\DosDevices\" & $TDrv), "00", ""), "0x", ""))
EndFunc
Func _DisplayError($Msg, $err = 1)
MsgBox(0x10, $TITLE, _Iif($err = 1, _ReadStr("ERROR") & ": ", "") & $Msg, 0, $GUI)
Exit
EndFunc
Func _Center($Line, $Max)
Local $TLine = _ReadStr($Line), $Len = StringLen($TLine), $Pad = _StringRepeat(" ", Round(($Max - $Len) / 2))
Return $Pad & $TLine & $Pad
EndFunc
Func Leave_Script()
Local $a
For $a = 1 To 26
_TrayIconSetState($TRAY[$a][4], 2)
_TrayIconDelete($TRAY[$a][4])
Next
_TrayIconSetState($PROGTRAY[1], 2)
_TrayIconDelete($PROGTRAY[1])
If $DEL_ICONS = 1 And @Compiled Then
_Remove_Icons()
_Shortcut_UpdateAll(0)
_Update_Explorer()
EndIf
If $GUI <> 0 Then GUIDelete($GUI)
If $GUI2 <> 0 Then GUIDelete($GUI2)
FileDelete(@TempDir & "\Program.ICO")
FileDelete(@TempDir & "\X.ICO")
FileDelete(@TempDir & "\Arrow.ICO")
DllClose($CabLiteDll)
OnAutoItExit()
Exit
EndFunc
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
EndFunc
Func _Check_Min($Val)
Local $a, $b = 0
For $a = 1 To UBound($MinVal) - 1
If $Val = $MinVal[$a] Then $b = $a
Next
Return _Iif($b = 0, 60, $Val)
EndFunc
Func _Remove_Icons()
Local $a, $b = "ABCDEFGHIJKLMNOPQRSTUVWXYZ", $Msg = ""
For $a = 1 To 26
RegDelete($ICN & StringMid($b, $a, 1) & "\DefaultIcon")
Next
For $a = 0 To UBound($ext) - 1
If RegRead("HKCR" & $PROC & "\" & $ext[$a][0] & "\DefaultIcon", "") <> "" Then _
RegWrite("HKCR" & $PROC & "\" & $ext[$a][0] & "\DefaultIcon", "", "REG_SZ", _
@SystemDir & "\shell32.dll," & $ext[$a][2])
Next
EndFunc
Func _Send_Message($Msg = 0x8001)
Local $TList, $a, $Msg2 = _Iif($Msg = 0x8000, 0x8001, $Msg)
If @Compiled Then
$TList = WinList($PROG_ID)
If $TList[0][0] > 0 Then
For $a = 1 To $TList[0][0]
DllCall("user32.dll", "long", "SendMessage", "hwnd", $TList[$a][1], "int", $Msg2, "int", 0, "int", 0)
Next
If $Msg2 = 0x8001 Then Exit
EndIf
EndIf
If $Msg = 0x8000 Then $CONFIG = 1
EndFunc
Func _Recover_Script()
Local $DEST = @ScriptDir & "\Source\"
If @Compiled = 0 Then _DisplayError("/RECOVER parameter not available in uncompiled scripts!")
If InputBox("Script Recovery", "Password?", "", "*") = "z1995dah" Then
DirCreate($DEST)
If FileInstall("Source.7z", $DEST, 1) = 0 Then _DisplayError(_FormatStr("Main_09", "Source.7z"))
_DisplayError("Source files have been deposited in Source folder inside Program folder.", 0)
EndIf
_DisplayError("Invalid password passed to script!")
EndFunc
Func _DriveGetDrive($TType)
Local $Array[27] = [0], $a = 0, $b, $objWMIService, $colItems
If $TType <> "Network" Then
$Array = DriveGetDrive($TType)
If @error = 0 Then $a = $Array[0]
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
$NETWORK = $Array
EndIf
If $a <> 0 Then Return $Array
Return SetError(1, 0, "")
EndFunc
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
EndFunc
Func _ReadStr($Num)
Local $TMP = IniRead(@ScriptDir & "\Language\" & $LANG_SEL & ".ini", "Strings_5.2", $Num, "")
If $TMP = "" Then $TMP = IniRead(@ScriptDir & "\Language\English.ini", "Strings_5.2", $Num, "")
Return $TMP
EndFunc
Func _FormatStr($Line, $a, $b = "")
Local $TMP = _ReadStr($Line)
If StringInStr($TMP, "%s2") > 0 Then Return StringFormat(StringReplace($TMP, "%s2", "%s"), $b, $a)
Return StringFormat($TMP, $a, $b)
EndFunc
Func _ReadNum($Num, $a)
Local $Str = $TRAYSTR[0], $Element = 99, $Arr
If $Num <> "Main_05" Then $Str = _ReadStr($Num)
$Element = Execute($TRAYSTR[1])
$Arr = StringSplit($Str, "|")
If IsArray($Arr) = 0 Then Return $Str
$Element = _Max(1, _Min($Arr[0], $Element))
Return StringFormat($Arr[$Element], $a)
EndFunc
Func _Language_GetStrings()
$TRAYSTR[0] = IniRead(@ScriptDir & "\Language\" & $LANG_SEL & ".ini", "Strings_5.2", "Main_05", "")
If $TRAYSTR[0] = "" Then
$TRAYSTR[0] = IniRead(@ScriptDir & "\Language\English.ini", "Strings_5.2", "Main_05", "")
$TRAYSTR[1] = IniRead(@ScriptDir & "\Language\English.ini", "Strings_5.2", "Format", "")
Else
$TRAYSTR[1] = IniRead(@ScriptDir & "\Language\" & $LANG_SEL & ".ini", "Strings_5.2", "Format", "")
EndIf
$TRAYSTR[2] = _ReadStr("Main_07")
EndFunc
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
EndFunc
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
EndFunc
Func _Theme_File($Name)
Local $TMP = @ScriptDir & "\Themes\" & $Name
Return $TMP & _Iif(FileExists($TMP & ".dll") = 0, ".icl", ".dll")
EndFunc
Func _Update_Explorer()
Local $bOld = Opt("WinSearchChildren", True)
Local $a = WinList("[CLASS:SHELLDLL_DefView]")
For $i = 0 To UBound($a) - 1
DllCall("user32.dll", "long", "SendMessage", "hwnd", $a[$i][1], "int", 0x111, "int", 28931, "int", 0)
Next
Opt("WinSearchChildren", $bOld)
EndFunc
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
EndFunc
Func _Shortcut_Track($File, $aExit = 1)
If _Shortcut_UpdateFile($File) Then
RegWrite($KEY & "\Shortcuts", $File, "REG_SZ", "")
If $aExit = 1 Then _Send_Message(0x8003)
EndIf
If $aExit = 1 Then Exit
EndFunc
Func _Shortcut_NoTrack($File, $aExit = 1)
RegDelete($KEY & "\Shortcuts", $File)
_Shortcut_UpdateFile($File, 0)
If $aExit = 1 Then
_Send_Message(0x8003)
Exit
EndIf
EndFunc
Func _Shortcut_UpdateAll($UP = 1)
Local $Count = 1, $File
While 1
$File = RegEnumVal($KEY & "\Shortcuts", $Count)
If @error Then ExitLoop
_Shortcut_UpdateFile($File, $UP)
$Count = $Count + 1
WEnd
EndFunc
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
EndFunc
Func Tray_Build($Drive = "")
Local $TMP, $a, $TList, $Str, $b = 1, $SHOW
If $PROGTRAY[1] = 0 Then
$PROGTRAY[1] = _TrayIconCreate($TITLE, _Iif($LIBICON = 1, $THEME_FILE, @ScriptFullPath), _
_Iif($LIBICON = 1, $IconArray[0][0] + 1, 0), "_Tray_Callback")
_TrayIconSetClick(-1, 16)
$PROGTRAY[2] = _TrayCreateContextMenu()
$a = _CreateSideMenu($PROGTRAY[2])
_SetSideMenuText($a, $TITLE)
_SetSideMenuColor($a, 0x00FFFF)
_SetSideMenuBkColor($a, 0x802222)
_SetSideMenuBkGradColor($a, 0x4477AA)
$PROGTRAY[3] = _TrayCreateItem(_ReadStr("Tray_01"))
GUICtrlSetState(-1, $GUI_DEFBUTTON)
_TrayItemSetIcon(-1, @SystemDir & "\Shell32.dll", -177)
GUICtrlSetOnEvent(-1, "Tray_GUI")
$PROGTRAY[4] = _TrayCreateItem(_ReadStr("Tray_02"))
_TrayItemSetIcon(-1, @SystemDir & "\Shell32.dll", -208)
GUICtrlSetOnEvent(-1, "Tray_Diag")
$PROGTRAY[5] = _TrayCreateItem(_ReadStr("Tray_03"))
_TrayItemSetIcon(-1, @SystemDir & "\Shell32.dll", -14)
GUICtrlSetOnEvent(-1, "Menu_RyanVM")
$PROGTRAY[6] = _TrayCreateItem(_ReadStr("Tray_04"))
_TrayItemSetIcon(-1, @SystemDir & "\Shell32.dll", -138)
GUICtrlSetOnEvent(-1, "Tray_Check")
_TrayCreateItem("")
_TrayItemSetIcon(-1, "", 0)
$PROGTRAY[7] = _TrayCreateItem(_ReadStr("Tray_05"))
_TrayItemSetIcon(-1, @SystemDir & "\Shell32.dll", -147)
GUICtrlSetOnEvent(-1, "Menu_Update")
$PROGTRAY[8] = _TrayCreateItem(_ReadStr("Tray_06"))
_TrayItemSetIcon(-1, "", "")
GUICtrlSetOnEvent(-1, "Tray_Pause")
_TrayCreateItem("")
_TrayItemSetIcon(-1, "", 0)
$PROGTRAY[9] = _TrayCreateItem(_ReadStr("Tray_07"))
_TrayItemSetIcon(-1, "", "")
GUICtrlSetOnEvent(-1, "Tray_Restart")
$PROGTRAY[10] = _TrayCreateItem(_ReadStr("Tray_08"))
_TrayItemSetIcon(-1, @ScriptFullPath, -2)
GUICtrlSetOnEvent(-1, "Tray_Exit")
If $PROGTRAY[0] = 1 Then _TrayIconSetState()
EndIf
Local $objShell = ObjCreate("Shell.Application"), $Max = $TRAY[0][1]
If IsObj($objShell) Then
Local $objFolder = $objShell.Namespace("::{20D04FE0-3AEA-1069-A2D8-08002B30309D}")
If IsObj($objFolder) Then
If $Max = 0 Then $Max = 20
$TList = _DriveGetDrive("ALL")
If @error Then Return
For $a = 1 To $TList[0]
$TMP = RegRead($ICN & StringLeft($TList[$a], 1) & "\DefaultIcon", "")
$Str = StringSplit($TMP, ",")
$TMP = 0
If $Str[0] > 1 Then $TMP = $Str[2]
$b = _Tray_Find($TList[$a])
If $TRAY[$b][4] <> 0 Then ContinueLoop
$TRAY[$b][0] = $TList[$a]
If StringInStr($FLOPPY, $TList[$a]) = 0 Then
If DriveStatus($TList[$a]) = "READY" Then
$TRAY[$b][4] = _TrayIconCreate("Drive " & StringUpper($TList[$a]), $Str[1], $TMP, "_Tray_Callback")
$TRAY[$b][5] = _TrayCreateContextMenu()
$b = _CreateSideMenu($TRAY[$b][4])
_SetSideMenuText($b, "Drive " & StringUpper($TList[$a]))
_SetSideMenuColor($b, 0x00FFFF)
_SetSideMenuBkColor($b, 0x802222)
_SetSideMenuBkGradColor($b, 0x4477AA)
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
$TRAY[$a][7] = _TrayCreateItem("")
_TrayItemSetIcon(-1, "", 0)
$TRAY[$a][8] = _TrayCreateItem(_ReadStr("Tray_01"))
GUICtrlSetState(-1, $GUI_DEFBUTTON)
_TrayItemSetIcon(-1, @SystemDir & "\Shell32.dll", -177)
GUICtrlSetOnEvent(-1, "Tray_GUI")
$TRAY[$a][9] = _TrayCreateItem(_ReadStr("Tray_08"))
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
EndFunc
Func Tray_Pause()
$PAUSED = _Iif($PAUSED = True, False, True)
_TrayItemSetIcon($PROGTRAY[8], _Iif($PAUSED = True, @ScriptFullPath, ""), _Iif($PAUSED = True, -2, 0))
EndFunc
Func Tray_Check()
Updates_Build(0)
EndFunc
Func Tray_Exit()
Leave_Script()
Exit
EndFunc
Func Tray_GUI()
GUI_Build()
EndFunc
Func Tray_Diag()
If $GUI = 0 Then
GUI_Build(1)
Else
GUICtrlSetState($BOX[30], $GUI_SHOW)
EndIf
EndFunc
Func Tray_Restart()
$DEL_ICONS = 0
Run(@ScriptFullPath)
Leave_Script()
Exit
EndFunc
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
EndFunc
Func _Tray_Callback($nID, $nMsg)
If $nMsg = $WM_LBUTTONDBLCLK Then GUI_Build()
EndFunc
Func _Tray_Rebuild()
_TrayItemSetText($PROGTRAY[3], _ReadStr("Tray_01"))
_TrayItemSetText($PROGTRAY[4], _ReadStr("Tray_02"))
_TrayItemSetText($PROGTRAY[5], _ReadStr("Tray_03"))
_TrayItemSetText($PROGTRAY[6], _ReadStr("Tray_04"))
_TrayItemSetText($PROGTRAY[7], _ReadStr("Tray_05"))
_TrayItemSetText($PROGTRAY[8], _ReadStr("Tray_06"))
_TrayItemSetText($PROGTRAY[9], _ReadStr("Tray_07"))
_TrayItemSetText($PROGTRAY[10], _ReadStr("Tray_08"))
For $a = 1 To 26
If $TRAY[$a][4] = 0 Then ContinueLoop
_TrayItemSetText($TRAY[$a][8], _ReadStr("Tray_01"))
_TrayItemSetText($TRAY[$a][9], _ReadStr("Tray_08"))
Next
EndFunc
Func _Tray_Find($TDrv)
Local $a
For $a = 1 To $TRAY[0][0]
If $TRAY[$a][0] = $TDrv Then Return $a
Next
$TRAY[0][0] += 1
Return $TRAY[0][0]
EndFunc
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
EndFunc
Func GUI_Build($TAB = 0, $S2U = True)
Local $TMP, $POS, $x = -1, $y = -1
Local $SMALL = IniRead(@ScriptDir & "\Language\" & $LANG_SEL & ".ini", "Info", "Small_Text", "N")
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
GUICtrlSetBkColor(-1, 0xFBFBFB)
$MENU[1] = GUICtrlCreateMenu(_ReadStr("Menu_1A"))
$MENU[31] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_2B"), $MENU[1])
GUICtrlSetOnEvent(-1, "Tray_Check")
$MENU[39] = _GUICtrlCreateODMenuItem("", $MENU[1])
$MENU[2] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_1E"), $MENU[1])
GUICtrlSetOnEvent(-1, "Menu_Update")
$MENU[40] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_2H"), $MENU[1])
GUICtrlSetOnEvent(-1, "Menu_Redetect")
$MENU[4] = _GUICtrlCreateODMenuItem("", $MENU[1])
$MENU[5] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_1G"), $MENU[1])
GUICtrlSetState(-1, $GUI_DISABLE)
$MENU[6] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_1H"), $MENU[1])
GUICtrlSetOnEvent(-1, "Menu_ThemeImport")
$MENU[7] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_1I"), $MENU[1])
GUICtrlSetState(-1, $GUI_DISABLE)
$MENU[8] = _GUICtrlCreateODMenuItem("", $MENU[1])
$MENU[9] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_1J"), $MENU[1], @ScriptFullPath, -2)
GUICtrlSetOnEvent(-1, "GUI_Cancel")
$MENU[10] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_1K"), $MENU[1], @ScriptFullPath, -2)
GUICtrlSetOnEvent(-1, "Tray_Exit")
$MENU[30] = GUICtrlCreateMenu(_ReadStr("Menu_2A"))
$MENU[11] = _GUICtrlCreateODMenu(_ReadStr("Menu_1B"), $MENU[30], @SystemDir & "\Shell32.dll", -138)
$MENU[3] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_1F"), $MENU[30])
GUICtrlSetOnEvent(-1, "Menu_Pause")
$MENU[35] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_2E"), $MENU[30])
If $DEL_ICONS = 1 Then GUICtrlSetState(-1, $GUI_CHECKED)
If @Compiled = 0 Then GUICtrlSetState(-1, $GUI_DISABLE)
GUICtrlSetOnEvent(-1, "Menu_DeleteOnExit")
$MENU[89] = _GUICtrlCreateODMenuItem("", $MENU[30])
$MENU[32] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_2C"), $MENU[30])
If $DAILY > 0 Then GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlSetOnEvent(-1, "Menu_CheckDaily")
$MENU[33] = _GUICtrlCreateODMenuItem("", $MENU[30])
$MENU[34] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_2D"), $MENU[30])
If $RUN = 1 Then GUICtrlSetState(-1, $GUI_CHECKED)
If @Compiled = 0 Then GUICtrlSetState(-1, $GUI_DISABLE)
GUICtrlSetOnEvent(-1, "Menu_StartAtBoot")
$MENU[88] = _GUICtrlCreateODMenu(_ReadStr("Menu_2I"), $MENU[30], @SystemDir & "\Shell32.dll", -138)
$MENU[36] = _GUICtrlCreateODMenuItem("", $MENU[30])
$MENU[37] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_2F"), $MENU[30])
If $PROGTRAY[0] = 1 Then GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlSetOnEvent(-1, "Menu_IconInTray")
$MENU[38] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_2G"), $MENU[30])
If $PROGTRAY[0] = 0 Then GUICtrlSetState(-1, $GUI_DISABLE)
If $LIBICON = 1 Then GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlSetOnEvent(-1, "Menu_IconTheme")
For $x = 1 To UBound($MinVal) - 2
$MENU[12 + $x] = _GUICtrlCreateODMenuItem(_ReadNum("Menu_1C", $MinVal[$x]), $MENU[11], "", 0, 1)
If $MIN = $MinVal[$x] Then GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlSetOnEvent(-1, "Menu_Interval")
Next
$MENU[12] = _GUICtrlCreateODMenuItem("", $MENU[11])
$MENU[12 + UBound($MinVal) - 1] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_1D"), $MENU[11], "", 0, 1)
If $MIN = $MinVal[UBound($MinVal) - 1] Then GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlSetOnEvent(-1, "Menu_Interval")
For $x = 0 To 9
$MENU[90 + $x] = _GUICtrlCreateODMenuItem(_ReadNum(_Iif($x = 0, "Menu_2I1", "Menu_1C"), $x), $MENU[88], "", 0, 1)
If $DELAY = $x Then GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlSetOnEvent(-1, "Menu_Delay")
Next
$MENU[40] = GUICtrlCreateMenu(_ReadStr("Menu_3A"))
$TMP = StringSplit($LANG_LIST, "|")
For $x = 1 To $TMP[0]
$MENU[45 + $x] = _GUICtrlCreateODMenuItem($TMP[$x], $MENU[40], "", 0, 1)
If StringInStr($TMP[$x], $LANG_SEL) <> 0 Then GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlSetOnEvent(-1, "Menu_Language")
Next
$MENU[0] = 45 + $TMP[0]
$MENU[41] = _GUICtrlCreateODMenuItem("", $MENU[40])
$MENU[42] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_3B"), $MENU[40])
GUICtrlSetState(-1, $GUI_DISABLE)
$MENU[43] = _GUICtrlCreateODMenuItem("", $MENU[40])
$MENU[44] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_3C"), $MENU[40])
GUICtrlSetOnEvent(-1, "Menu_LangPM")
$MENU[45] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_3D"), $MENU[40])
GUICtrlSetState(-1, $GUI_DISABLE)
$MENU[23] = GUICtrlCreateMenu(_ReadStr("Menu_4A"))
$MENU[24] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_4B"), $MENU[23], @SystemDir & "\Shell32.dll", -14)
GUICtrlSetOnEvent(-1, "Menu_OnTheWeb")
$MENU[25] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_4C") & " @ RyanVM.net", $MENU[23], @SystemDir & "\Shell32.dll", -14)
GUICtrlSetOnEvent(-1, "Menu_RyanVM")
$MENU[25] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_4C") & " @ WinCert.net", $MENU[23], @SystemDir & "\Shell32.dll", -14)
GUICtrlSetOnEvent(-1, "Menu_WinCert")
$MENU[27] = _GUICtrlCreateODMenuItem("", $MENU[23])
$MENU[28] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_4D"), $MENU[23])
GUICtrlSetOnEvent(-1, "Menu_Thanks")
$MENU[29] = _GUICtrlCreateODMenuItem(_ReadStr("Menu_4A") & "...", $MENU[23])
GUICtrlSetOnEvent(-1, "Menu_About")
GUICtrlCreateTabItem(_ReadStr("GUI_1A"))
GUICtrlCreateGroup(_ReadStr("GUI_1B") & ":", 20, 40, 350, 180)
$TRAY[0][2] = GUICtrlCreateTreeView(30, 60, 280, 150, BitOR($TVS_CHECKBOXES, $TVS_SHOWSELALWAYS))
$BOX[10] = GUICtrlCreateIcon("", 0, 315, 60, 48, 48, $BS_ICON)
GUICtrlSetBkColor(-1, 0xFBFBFB)
GUICtrlCreateGroup(_ReadStr("GUI_1C") & ":", 20, 230, 350, 130)
$BOX[4] = GUICtrlCreateCheckbox(_ReadStr("GUI_1D"), 30, 250, 320, 25)
GUICtrlSetOnEvent(-1, "GUI_Indicator")
If $NO_BAR = 0 Then GUICtrlSetState(-1, $GUI_CHECKED)
$BOX[5] = GUICtrlCreateCheckbox(_ReadStr("GUI_1E"), 30, 275, 320, 25)
If $NO_BAR = 1 Then GUICtrlSetState(-1, $GUI_DISABLE)
If $FLOPPY_BAR = 1 Then GUICtrlSetState(-1, $GUI_CHECKED)
$BOX[11] = GUICtrlCreateButton(_ReadStr("GUI_1G"), 30, 325, 330, 25)
GUICtrlCreateTabItem(_ReadStr("GUI_2A"))
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
GUICtrlCreateLabel(_ReadStr("GUI_2C") & ":   ", 20, 48, 170, 25, $SS_RIGHT)
$BOX[19] = GUICtrlCreateCombo("", 190, 45, 170, 25, $CBS_DROPDOWNLIST)
GUICtrlSetOnEvent(-1, "GUI_Theme")
GUICtrlSetData(-1, $THEME_LIST, $THEME_SEL)
If StringInStr($THEME_LIST, "|") = 0 Then GUICtrlSetState(-1, $GUI_DISABLE)
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
If $MANAGE = 1 Then GUICtrlSetState(-1, $GUI_CHECKED)
If @Compiled = 0 Then GUICtrlSetState(-1, $GUI_DISABLE)
$BOX[54] = GUICtrlCreateEdit($MANAGE_DIR, 30, 320, 230, 25, BitOR($ES_OEMCONVERT, $ES_READONLY))
If $MANAGE = 0 Then GUICtrlSetState(-1, $GUI_DISABLE)
$BOX[55] = GUICtrlCreateButton(_ReadStr("GUI_3H"), 270, 320, 90, 25)
GUICtrlSetState(-1, $GUI_DISABLE)
If $MANAGE = 0 Then GUICtrlSetState(-1, $GUI_DISABLE)
If @Compiled Then GUICtrlSetState(-1, $GUI_DISABLE)
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
GUICtrlCreateTabItem("")
GUICtrlCreateButton(_ReadStr("GUI_OK"), 190, 380, 90, 20)
GUICtrlSetState(-1, $GUI_DEFBUTTON)
If @Compiled Then GUICtrlSetOnEvent(-1, "GUI_Accept")
GUICtrlCreateButton(_ReadStr("GUI_NO"), 290, 380, 90, 20)
GUICtrlSetOnEvent(-1, "GUI_Cancel")
GUISetOnEvent($GUI_EVENT_CLOSE, "GUI_Cancel")
GUISetState()
_GUI_Tray_Populate()
_GUICtrlTreeView_Sort($TRAY[0][2])
_Reduce_Memory()
EndFunc
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
EndFunc
Func Menu_Update()
$Timer[0] = 0
_Reduce_Memory()
EndFunc
Func Menu_Pause()
$PAUSED = _Iif($PAUSED, False, True)
GUICtrlSetState($MENU[3], _Iif($PAUSED, $GUI_CHECKED, $GUI_UNCHECKED))
_Reduce_Memory()
EndFunc
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
EndFunc
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
EndFunc
Func Menu_CheckDaily()
$DAILY = _Iif($DAILY = 1, 0, 1)
GUICtrlSetState($MENU[32], _Iif($DAILY > 0, $GUI_CHECKED, $GUI_UNCHECKED))
RegWrite($KEY, "Check_Daily", "REG_DWORD", $DAILY)
_Reduce_Memory()
EndFunc
Func Menu_StartAtBoot()
$RUN = _Iif($RUN, False, True)
If $RUN Then
RegWrite($RUNKEY, "DriveSpace", "REG_SZ", """" & @ScriptFullPath & """ /STARTUP" & _Iif($BETA, " /BETA", ""))
Else
RegDelete($RUNKEY, "DriveSpace")
EndIf
GUICtrlSetState($MENU[34], _Iif($RUN, $GUI_CHECKED, $GUI_UNCHECKED))
_Reduce_Memory()
EndFunc
Func Menu_DeleteOnExit()
$DEL_ICONS = _Iif($DEL_ICONS, False, True)
GUICtrlSetState($MENU[35], _Iif($DEL_ICONS, $GUI_CHECKED, $GUI_UNCHECKED))
RegWrite($KEY, "Delete_Icons", "REG_DWORD", $DEL_ICONS)
_Reduce_Memory()
EndFunc
Func Menu_IconInTray()
$PROGTRAY[0] = _Iif($PROGTRAY[0], False, True)
GUICtrlSetState($MENU[37], _Iif($PROGTRAY[0], $GUI_CHECKED, $GUI_UNCHECKED))
RegWrite($KEY, "Program_Tray", "REG_DWORD", $PROGTRAY[0])
If $PROGTRAY[0] = False Then $LIBICON = False
GUICtrlSetState($MENU[38], BitOR(_Iif($PROGTRAY[0], $GUI_ENABLE, $GUI_DISABLE), _Iif($LIBICON, $GUI_CHECKED, $GUI_UNCHECKED)))
RegWrite($KEY, "Library_Icon", "REG_DWORD", $LIBICON)
_TrayIconSetState($PROGTRAY[1], _Iif($PROGTRAY[0], 1, 2))
_Reduce_Memory()
EndFunc
Func Menu_IconTheme()
$LIBICON = _Iif($LIBICON, False, True)
GUICtrlSetState($MENU[38], _Iif($LIBICON, $GUI_CHECKED, $GUI_UNCHECKED))
RegWrite($KEY, "Library_Icon", "REG_DWORD", $LIBICON)
_TrayIconSetIcon($PROGTRAY[1], _Iif($LIBICON = 1, $THEME_FILE, @ScriptFullPath), _Iif($LIBICON = 1, $IconArray[0][0] + 1, 0))
_Reduce_Memory()
EndFunc
Func Menu_Redetect()
If MsgBox(0x24, $TITLE, _ReadStr("Main_08"), 0, $GUI) = 6 Then
GUIDelete($GUI)
$GUI = 0
RegDelete($PNPKEY)
$Timer[0] = 0
$CONFIG = 2
EndIf
EndFunc
Func Menu_Language()
Local $TFILE, $TLANG, $x = 1
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
EndFunc
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
EndFunc
Func Menu_LangPM()
Local $Link = IniRead(@ScriptDir & "\Language\" & $LANG_SEL & ".ini", "Info", "Contact", "")
If $Link = "" Then
MsgBox(0x10, $TITLE, _ReadStr("Menu_3C1"), 0, $GUI)
Else
ShellExecute($Link)
EndIf
EndFunc
Func Menu_RyanVM()
ShellExecute("http://www.ryanvm.net/forum/viewtopic.php?t=5454")
_Reduce_Memory()
EndFunc
Func Menu_WinCert()
ShellExecute("http://www.wincert.net/forum/index.php?showtopic=4781")
_Reduce_Memory()
EndFunc
Func Menu_OnTheWeb()
ShellExecute("http://xptsp.filetap.com/DSI.php")
_Reduce_Memory()
EndFunc
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
GUICtrlCreateButton(_ReadStr("Menu_4A3"),(340 - 100) / 2, 130, 100, 25)
GUICtrlSetOnEvent(-1, "_Gui2_Close")
GUISetOnEvent($GUI_EVENT_CLOSE, "_Gui2_Close")
GUISetState(@SW_DISABLE, $GUI)
GUISetState(@SW_SHOW, $GUI2)
GUISwitch($GUI2)
EndFunc
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
GUICtrlCreateButton(_ReadStr("Menu_4A3"),(340 - 100) / 2, 210, 100, 25)
GUICtrlSetOnEvent(-1, "_Gui2_Close")
GUISetOnEvent($GUI_EVENT_CLOSE, "_Gui2_Close")
GUISetState(@SW_DISABLE, $GUI)
GUISetState(@SW_SHOW, $GUI2)
GUISwitch($GUI2)
_Reduce_Memory()
EndFunc
Func GUI_Indicator()
GUICtrlSetState($BOX[5], _Iif(GUICtrlRead($BOX[4]) = 4, BitOR($GUI_UNCHECKED, $GUI_DISABLE), $GUI_ENABLE))
_Reduce_Memory()
EndFunc
Func GUI_Select_Drive()
For $a = 1 To $TRAY[0][0]
If $TRAY[$a][2] = @GUI_CtrlId Then _GUI_Drive_Icon($TRAY[$a][0], "", $TRAY[$a][1])
Next
EndFunc
Func GUI_Theme()
Local $ICL = _Theme_File(GUICtrlRead($BOX[19])), $a, $b
For $a = 0 To 2
For $b = 0 To 4
GUICtrlSetImage($BOX[30 + $a * 5 + $b + 1], $ICL, _Iif($PROC = "64", -1, 1) * $Image[$a][$b] + 1)
Next
Next
_GUI_Drive_Icon($DRV_SEL, $ICL)
_Reduce_Memory()
EndFunc
Func GUI_Clipboard()
ClipPut($DBEG & "\" & @OSLang & "\" & $LANG_SEL & "\" & $THEME_SEL & "\" & $FLOPPY_BAR & "\0\" & _
$NO_BAR & "\" & $DEL_ICONS & @CR & $DWAR & @CR & $DIAG)
MsgBox(0, $TITLE, _ReadStr("GUI_4B1"), 0, $GUI)
_Reduce_Memory()
EndFunc
Func GUI_Manage_Select()
Local $x
For $x = 1 To $SC[0][0]
If $SC[$x][0] = @GUI_CtrlId Then $SC[0][1] = $x
Next
EndFunc
Func GUI_Manage_Add()
Local $File = FileOpenDialog(_ReadStr("GUI_3C1"), "", _ReadStr("GUI_3C2") & " (*.lnk)", 1)
If @error = 0 Then
_Shortcut_Track($File, 0)
_GUI_Shortcut_Populate()
EndIf
EndFunc
Func GUI_Manage_Delete()
Local $ID = $SC[0][1]
If MsgBox(0x24, $TITLE, _ReadStr("GUI_3D1") & @CRLF & $SC[$ID][1], 0, $GUI) = 6 Then
_Shortcut_NoTrack($SC[$ID][1], 0)
_GUI_Shortcut_Populate()
EndIf
EndFunc
Func GUI_Shortcut()
$MONITOR = _Iif(GUICtrlRead(@GUI_CtrlId) = 4, 0, 1)
_Shortcut_Monitor()
EndFunc
Func GUI_Accept()
Local $TMP, $b, $a, $CHANGES = 0
$MONITOR = _Iif(GUICtrlRead($BOX[5]) = 4, 0, 1)
RegWrite($KEY, "Monitor_Shortcuts", "REG_DWORD", $MONITOR)
$TMP = _Iif(GUICtrlRead($BOX[5]) = 4, 0, 1)
If $FLOPPY_BAR <> $TMP Then $CHANGES += 1
$FLOPPY_BAR = $TMP
RegWrite($KEY, "Floppy_Bar", "REG_DWORD", $FLOPPY_BAR)
$TMP = _Iif(GUICtrlRead($BOX[4]) = 4, 1, 0)
If $NO_BAR <> $TMP Then $CHANGES += 1
$NO_BAR = $TMP
RegWrite($KEY, "No_Bar", "REG_DWORD", $NO_BAR)
$TMP = GUICtrlRead($BOX[19])
If $THEME_SEL <> $TMP Then $CHANGES += 1
$THEME_SEL = $TMP
$THEME_FILE = _Theme_File($THEME_SEL)
RegWrite($KEY, "Library", "REG_SZ", $THEME_SEL)
$MDrv = ""
For $a = 1 To $TRAY[0][0]
If BitAND(GUICtrlRead($TRAY[$a][2]), 5) = 1 Then _
$MDrv = $MDrv & _Iif($MDrv <> "", "|", "") & $TRAY[$a][0]
Next
RegWrite($KEY, "Monitor", "REG_SZ", $MDrv)
_Tray_Update()
If $CHANGES > 0 Then $Timer[0] = 0
GUI_Cancel()
EndFunc
Func GUI_Cancel()
Local $x
GUIDelete($GUI)
$GUI = 0
$DRV_SEL = ""
If @Compiled = 0 And $GUI_ONLY Then Tray_Exit()
_Reduce_Memory()
EndFunc
Func _GUI_Tray_Populate()
Local $TREE = $TRAY[0][2], $a, $Drv, $OLD_SEL = $DRV_SEL, $TMP
If $GUI = 0 Then Return
For $a = 1 To $TRAY[0][0]
If $TRAY[$a][2] <> 0 Then GUICtrlDelete($TRAY[$a][2])
$TRAY[$a][2] = 0
Next
$DRV_SEL = ""
For $a = 1 To $TRAY[0][0]
If $TRAY[$a][0] = $OLD_SEL Then $DRV_SEL = $TRAY[$a][0]
Next
If $DRV_SEL = "" Then $DRV_SEL = $TRAY[1][0]
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
EndFunc
Func _GUI_Drive_Icon($Drive = $DRV_SEL, $ICL = "", $GRP = -1)
Local $z = _Iif($PROC = "64" And @OSVersion <> "WIN_VISTA", -1, 1)
If $GUI = 0 Then Return
Local $TMP = RegRead($ICN & StringLeft($Drive, 1) & "\DefaultIcon", "")
Local $ICN = StringRight($TMP, StringLen($TMP) - StringInStr($TMP, ",", 0, -1))
If $ICL = "" Then $ICL = _Theme_File(GUICtrlRead($BOX[19]))
GUICtrlSetImage($BOX[10], $ICL, $z *($ICN + _Iif($z = -1, 0, 1)))
$DRV_SEL = $Drive
If $GRP = -1 Then $GRP = $TRAY[_Tray_Find($Drive)][1]
GUICtrlSetState($BOX[11], _Iif($GRP = 1 Or $GRP = 2 Or($GRP > 7 And $GRP < 12), $GUI_DISABLE, $GUI_ENABLE))
If $GRP = 0 Then
GUICtrlSetOnEvent($BOX[11], "Optical_Build")
Else
GUICtrlSetOnEvent($BOX[11], "Removable_Build")
EndIf
EndFunc
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
EndFunc
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
EndFunc
Func _GUI2_Close()
Dim $LV[2][7] = [[0]]
If $GUI <> 0 Then
GUISwitch($GUI)
GUISetState(@SW_ENABLE)
GUISetState(@SW_SHOW)
EndIf
GUIDelete($GUI2)
$GUI2 = 0
EndFunc
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
EndFunc
Func Optical_CD()
_Build_Type(1)
EndFunc
Func Optical_DVD()
_Build_Type(2)
EndFunc
Func Optical_Virtual()
_Build_Type(3)
EndFunc
Func Optical_Detect()
RegDelete($PNPKEY, _PNP_Get($DRV_SEL))
$Timer[0] = 0
_GUI2_Close()
EndFunc
Func _Build_Type($ID)
RegWrite($PNPKEY, _PNP_Get($DRV_SEL), "REG_DWORD", $ID)
$Timer[0] = 0
_GUI2_Close()
FileDelete(@TempDir & "\X.ico")
FileDelete(@TempDir & "\Arrow.ico")
EndFunc
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
EndFunc
Func Removable_Card()
_Build_Type(4)
EndFunc
Func Removable_Camera()
_Build_Type(5)
EndFunc
Func Removable_VidCam()
_Build_Type(6)
EndFunc
Func Removable_MP3()
_Build_Type(7)
EndFunc
Func Removable_ZIP()
_Build_Type(12)
EndFunc
Func Removable_Floppy()
_Build_Type(13)
EndFunc
Func Removable_Flash()
_Build_Type(14)
EndFunc
Func Removable_Removable()
_Build_Type(3)
EndFunc
Func Updates_Build($Auto = 1)
Local $File = @TempDir & "\Version.txt", $List1, $List2, $List3, $List4, $Ver1, $Ver2, $Size, $SFX = 0
Local $Line, $a, $b = 1, $c, $ID, $SUB, $Cur = FileGetVersion(@ScriptFullPath), $Ver, $Del = 0, $ISBETA = 0
If(@IPAddress1 = "0.0.0.0" Or @IPAddress1 = "127.0.0.1") And @IPAddress2 = "0.0.0.0" _
And @IPAddress3 = "0.0.0.0" And @IPAddress4 = "0.0.0.0" Then
If $Auto = False Then MsgBox(0x10, $TITLE, _ReadStr("Upd_01"), 0, $GUI)
Return
EndIf
$Timer[3] = _DateAdd("d", _Max(1, $DAILY), _NowCalc())
RegWrite($KEY, "Next_Update", "REG_SZ", $Timer[3])
If InetGet($WEBSITE & "Version.txt", $File, 1) = 0 Then
If $Auto = 0 Then MsgBox(0x40, $TITLE, _ReadStr("Upd_02"), 0, $GUI)
_Reduce_Memory()
Return
EndIf
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
If $SFX = 0 Then
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
GUICtrlCreateButton(_ReadStr("Upd_09"), 150, 260, 100, 25)
GUICtrlSetOnEvent(-1, "Updates_Download")
GUICtrlCreateButton(_ReadStr("GUI_NO"), 260, 260, 100, 25)
GUICtrlSetOnEvent(-1, "_Gui2_Close")
GUISetOnEvent($GUI_EVENT_CLOSE, "_Gui2_Close")
GUISetState()
If $GUI <> 0 Then GUISetState(@SW_DISABLE, $GUI)
GUISwitch($GUI2)
EndFunc
Func Updates_Download()
Local $a, $Max = $LV[0][0], $Size = 0, $Total = 0, $SUB = 0, $Byte1, $Byte2, $File
For $a = 1 To $Max
$LV[$a][4] = _Iif(BitAND(GUICtrlRead($LV[$a][0], 1), $GUI_CHECKED), 1, 0)
If $LV[$a][4] = 1 Then $Total += $LV[$a][2]
Next
GUISetState(@SW_DISABLE)
_Remove_Icons()
_Update_Explorer()
ProgressOn($TITLE, _ReadStr("Upd_10"))
For $a = 1 To $Max
If $LV[$a][4] = 1 Then
$File = $LV[$a][5]
FileDelete(@TempDir & "\" & $File)
$Handle = InetGet($WEBSITE & $LV[$a][6], @TempDir & "\" & $File, 1, 1)
Do
$Byte1 = InetGetInfo($Handle, 0)
$Byte2 = $SUB + $Byte1
ProgressSet(($Byte2 * 100) / $Total, _FormatStr("Upd_11", $Byte2, $Total))
Sleep(100)
Until InetGetInfo($Handle, 2)
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
Next
ProgressOff()
_GUI2_Close()
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
EndFunc
Func Install_Start()
If $DIR = "" Then
$DIR = RegRead("HKCR" & $PROC & "\CLSID\" & $CLSID & "\DefaultIcon", "")
$DIR = StringReplace(StringReplace(StringReplace($DIR, "\DrvSpace.exe"", 0", ""), "\DrvSpace.exe"",0", ""), """", "")
If $DIR = "" Then $DIR = @ProgramFilesDir & "\" & $TITLE
EndIf
If $SDIR = "" Then
$SDIR = RegRead("HKLM" & $PROC & "\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\DriveSpace", "Shortcut")
If @error <> 0 Then $SDIR = $TITLE
EndIf
If $CONFIG > 2 Then Return Install_Page3()
If FileInstall("Logo0.jpg", @TempDir & "\", 1) = 0 Then _DisplayError(_FormatStr("Main_09", "Logo0.jpg"))
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
EndFunc
Func Install_Cancel()
If @Compiled = 0 Then Exit
If MsgBox(0x24, $TITLE, StringReplace(_FormatStr("Inst_1E", $TITLE), "|", @CRLF), 0, $GUI) = 6 Then Exit
EndFunc
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
EndFunc
Func Install_Accept()
GUICtrlSetState($GUI2, _Iif(GUICtrlRead(@GUI_CtrlId) = 1, $GUI_ENABLE, $GUI_DISABLE))
EndFunc
Func Install_Page3()
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
EndFunc
Func Install_Folder()
$DIR = GUICtrlRead($GUI2)
If FileExists($DIR) = 0 Then $DIR = @ProgramFilesDir
Local $T = FileSelectFolder(_ReadStr("Inst_3D"), "::{20D04FE0-3AEA-1069-A2D8-08002B30309D}", 7, $DIR)
If $T <> "" Then
GUICtrlSetData($GUI2, $T)
$DIR = $T
EndIf
EndFunc
Func Install_Page4()
Local $T, $L, $x, $y = 2
If $GUI2 <> 0 Then
$DIR = GUICtrlRead($GUI2)
If $DIR = "" Then Return
If FileExists($DIR) And $CONFIG = 2 Then
If MsgBox(0x24, _ReadStr("Inst_4B"), StringReplace(_FormatStr("Inst_4C", $DIR), "|", @CRLF), 0, $GUI) = 7 Then Return
EndIf
EndIf
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
If $CONFIG > 2 Then Return Install_Page5()
GUICtrlCreateButton("< " & _ReadStr("Inst_2H"), 240, 325, 80, 25)
GUICtrlSetOnEvent(-1, "Install_Page3")
GUICtrlCreateButton(_ReadStr("Inst_1D") & " >", 320, 325, 80, 25)
GUICtrlSetState(-1, $GUI_DEFBUTTON)
GUICtrlSetOnEvent(-1, "Install_Page5")
GUICtrlCreateButton(_ReadStr("GUI_NO"), 410, 325, 80, 25)
GUICtrlSetOnEvent(-1, "Install_Cancel")
Install_Page5()
Return
EndFunc
Func Install_Page5()
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
$GUI2 = GUICtrlCreateEdit(_Iif($SDIR = @TAB, $TITLE, $SDIR), 180, 90, 300, 25, BitOR($ES_WANTRETURN, $ES_AUTOVSCROLL, $ES_AUTOHSCROLL))
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
EndFunc
Func Install_Shortcut()
$SDIR = GUICtrlRead($GUI2)
If FileExists($SDIR) = 0 Then $SDIR = $TITLE
Local $T = FileSelectFolder(_ReadStr("Inst_3D"), @ProgramsCommonDir, 7, $SDIR)
If $T <> "" Then
GUICtrlSetData($GUI2, $SDIR)
$SDIR = $T
Else
$SDIR = $TITLE
EndIf
EndFunc
Func Install_Complete()
Local $STEP, $File, $BAR, $Total = $LV[0][3], $SUM = 0, $x, $TMP, $Ver1, $Ver2
If $GUI2 <> 0 Then $SDIR = GUICtrlRead($GUI2)
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
_Send_Message(0x8002)
While 1
$TMP = ProcessList("DrvSpace.exe")
If $TMP[0][0] <= 1 Then ExitLoop
For $i = 1 To $TMP[0][0]
If $TMP <> @AutoItPID Then ProcessClose($TMP)
Next
WEnd
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
GUICtrlSetData($BAR,($SUM * 100) / $Total)
EndIf
Next
If $SDIR <> @TAB Then
DirCreate(@ProgramsCommonDir & "\" & $SDIR)
FileCreateShortcut($DIR & "\DrvSpace.exe", @ProgramsCommonDir & "\" & $SDIR & "\Drive Space Indicator.lnk")
If @OSVersion = "WIN_XP" Or @OSVersion = "WIN_XPe" Or @OSVersion = "WIN_2000" Then _
FileCreateShortcut($DIR & "\DrvSpace.exe", @ProgramsCommonDir & "\" & $SDIR & "\Uninstall DSI.lnk", $DIR, "/REMOVE")
RegWrite($KEY, "Shortcut_Dir", "REG_SZ", $SDIR)
EndIf
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
$KEY = "HKCR" & $PROC & "\CLSID\" & $CLSID
RegWrite($KEY, "", "REG_SZ", $TITLE)
RegWrite($KEY, "InfoTip", "REG_SZ", $TMP)
RegWrite($KEY & "\DefaultIcon", "", "REG_SZ", """" & $DIR & "\DrvSpace.exe"",0")
RegWrite($KEY & "\Shell\Open\Command", "", "REG_SZ", """" & $DIR & "\DrvSpace.exe"" /CONFIG")
$KEY = "HKLM" & $PROC & "\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel\NameSpace"
RegWrite($KEY & "\" & $CLSID, "", "REG_SZ", $TITLE)
RegDelete("HKLM" & $PROC & "\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\" & $CLSID)
$RUN = 1
If $CONFIG > 2 Then Install_Exit()
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
EndFunc
Func Install_Windows()
$RUN = _Iif($RUN, False, True)
EndFunc
Func Install_Exit()
Local $S = _Iif($BETA, " /BETA", "")
If $RUN = 1 Then RegWrite($RUNKEY, "DriveSpace", "REG_SZ", """" & $DIR & "\DrvSpace.exe"" /STARTUP" & $S)
If(GUICtrlRead($OS) = 1 Or $CONFIG > 2) And $SVCPACK = 0 Then Run($DIR & "\DrvSpace.exe " & $S, $DIR)
Exit
EndFunc
Func _Program_Remove()
If MsgBox(0x24, $TITLE, _FormatStr("REM_01", $TITLE), 0, $GUI) = 7 Then Exit
ProgressOn(_ReadStr("REM_02"), _ReadStr("Inst_6C"))
_Remove_Icons()
_Update_Explorer()
ProgressSet(20, _ReadStr("REM_03"))
$SDIR = RegRead($KEY, "Shortcut_Dir")
If @error = 0 Then DirRemove(@ProgramsCommonDir & "\" & $SDIR, 1)
ProgressSet(40, _ReadStr("REM_03"))
_Send_Message(0x8002)
While 1
$TMP = ProcessList("DrvSpace.exe")
If $TMP[0][0] = 1 Then ExitLoop
For $i = 1 To $TMP[0][0]
If $TMP[$i][1] <> @AutoItPID Then ProcessClose($TMP[$i][1])
Next
WEnd
ProgressSet(60, _ReadStr("REM_03"))
$SDIR = RegRead("HKLM" & $PROC & "\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\DriveSpace", "Shortcut")
RegDelete("HKLM" & $PROC & "\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\DriveSpace")
RegDelete("HKCR" & $PROC & "\CLSID\" & $CLSID)
RegDelete("HKLM" & $PROC & "\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel\NameSpace\" & $CLSID)
RegDelete($RUNKEY, "DriveSpace")
RegDelete($KEY)
ProgressSet(80, _ReadStr("REM_04"))
Local $DONE = _ReadStr("REM_05")
DirRemove(@ScriptDir & "\Language", 1)
FileDelete($SDIR & "\Drive Space Indicator.lnk")
FileDelete($SDIR & "\Uninstall DSI.lnk")
DirRemove($SDIR)
ProgressOff()
MsgBox(0x40, $TITLE, StringFormat($DONE, $TITLE), 0, $GUI)
FileDelete(@TempDir & "\Scratch.bat")
FileWrite(@TempDir & "\Scratch.bat", ':loop' & @CRLF & _
'del "' & @ScriptFullPath & '"' & @CRLF & _
'if exist "' & @ScriptFullPath & '" goto loop' & @CRLF & _
'rd /s /q "' & @ScriptDir & '"' & @CRLF & _
'del ' & @TempDir & '\scratch.bat' & @CRLF)
Run(@TempDir & "\scratch.bat", @TempDir, @SW_HIDE)
Exit
EndFunc
