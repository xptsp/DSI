png2ico -i "png" -o "ICO" -s 16 32bpp -s 32 32bpp -s 48 32bpp -noconfirm
::XCOPY "png\*.ico" ".\ico\" /S /E /C /H /Q /Y
::DEL  "png\*.ico"  /F /Q /S
::++++++++++++++++++++++++++++++++++++++++++++++
::USAGE:
::GANT PNG to ICON converter
::(c) Andreas Verhoeven 2005, averhoev.2@hccnet.nl
::GANT is copyright Mattahan 2005
::------------------------------------------------
::
::Commandline options:
::-? for help
::-i <dir>, specifies the input folder that contain the PNG files to convert
::-o <dir>, specifies the output folder for the new ICON files
::-s <size,bpp>, specifies a size of the ICON files. Use multiple -s <size><bpp>bp
::p for multiple sizes and bits per pixels
::-noconfirm, don't ask the user for confirmation
::-silent, no progress output
::
::Example: png2ico.exe -s 16 32bpp -s 32 32bpp -s 48 32bpp -i c:\pngs\ -o c:\icons
::\
::
::This will convert all PNG files in c:\pngs\ to icons with 16x16, 32x32 and 48x48
:: (all in 32bits per pixel) icons and output them to c:\icons\
::
::++++++++++++++++++++++++++++++++++++++++++++++

