ECHO %1 %2
call C:\Ruby22-x64\bin\setrbvars.bat
ruby return_on_capital.rb %1 %2
PAUSE