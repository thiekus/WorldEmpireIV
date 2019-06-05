@echo off

echo Cleaning old project and affected forms files...
del EMPIRE16.MAK >nul 2>&1
del CONTMP16.FRM >nul 2>&1
del CONTMP16.FRX >nul 2>&1
del EMAILF16.FRM >nul 2>&1
del EMAILF16.FRX >nul 2>&1
del W3S16.FRM >nul 2>&1
del W3S16.FRX >nul 2>&1

echo.
echo Applying 16-bit source patch...

echo Patching EMPIRE16.MAK
..\tools\sed -f empireiv.sed EMPIREIV.MAK >EMPIRE16.MAK

echo Patching CONTMAP.FRM
..\tools\sed -f 32to16fr.sed CONTMAP.FRM >CONTMP16.FRM
copy CONTMAP.FRX CONTMP16.FRX

echo Patching EMAILFRM.FRM
..\tools\sed -f 32to16fr.sed EMAILFRM.FRM >EMAILF16.FRM
copy EMAILFRM.FRX EMAILF16.FRX

echo Patching W3S.FRM
..\tools\sed -f 32to16fr.sed W3S.FRM >W3S16.FRM
copy W3S.FRX W3S16.FRX

echo Remove sed temporaries
del sed* >nul 2>&1

echo.
echo Done!
pause> nul
