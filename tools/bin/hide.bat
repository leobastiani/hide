@ECHO OFF

if [%*]==[] (
	echo Digite o nome da janela.
	set /P windowname=
	goto:eof
) else (
	set windowname=%*
)

if [%windowname%]==[me] (
	cmdow @ /hid
	goto:eof
)

nircmd win hide ititle "%windowname%"
