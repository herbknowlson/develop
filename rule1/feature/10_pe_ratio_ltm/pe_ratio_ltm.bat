ECHO %1 %2
call C:\Ruby22-x64\bin\setrbvars.bat
ruby pe_ratio_ltm.rb %1 %2
PAUSE