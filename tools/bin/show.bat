@ECHO OFF

if [%*]==[] (
	echo Digite o nome da janela.
	set /P windowname=
	goto:eof
) else (
	set windowname=%*
)

if [%windowname%]==[me] (
	cmdow @ /vis
	goto:eof
)

nircmd win show ititle "%windowname%"
