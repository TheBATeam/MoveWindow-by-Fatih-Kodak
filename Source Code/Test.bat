@Echo off
cls

Title MoveWindow - Demo - www.thebateam.org
Set "Path=%Path%;%cd%;%cd%\files"
Color 0a
Echo.
Echo. Starting Windows Calculator...
Start calc.exe
timeout /t 3
For /l %%Y in (0,20,300) do (
	For /l %%X in (0,20,600) do (
		MoveWindow Calculator %%X %%Y
	)
)
Echo. Done...
Echo.
Echo.
Echo.
Echo. Killing Calculator Process...
taskkill /f /im Calc.exe 2>nul >nul
taskkill /f /im Calculator.exe 2>nul >nul
pause
exit