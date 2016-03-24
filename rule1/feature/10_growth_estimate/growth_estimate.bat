ECHO %1 %2
call C:\Ruby22-x64\bin\setrbvars.bat
ruby growth_estimate.rb %1 %2
PAUSE