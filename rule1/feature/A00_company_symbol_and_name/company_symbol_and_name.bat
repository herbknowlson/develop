ECHO %1 %2
call C:\Ruby22-x64\bin\setrbvars.bat
ruby -r "./company_symbol_and_name.rb" -e "Company_symbol_and_name.new.doIt 'APPL'"
PAUSE