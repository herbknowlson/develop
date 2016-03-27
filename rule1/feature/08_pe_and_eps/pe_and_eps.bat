ECHO %1 %2
call C:\Ruby22-x64\bin\setrbvars.bat
ruby -r "./pe_and_eps.rb" -e "Pe_and_eps.new.doIt 'APPL'"
PAUSE