@IF [%1] == [] (
@ECHO Usage: %~n0 ^<path^> ^[...^]
@GOTO :eof
)

@SETLOCAL
@SET "root=%~dp0"
:whileargs
@IF NOT [%1] == [] (
@ECHO Processing: %1
@"%root%avr-objdump.exe" -S "%1" > "%~dpn1.txt"
@SHIFT
@GOTO :whileargs
)
@ENDLOCAL
