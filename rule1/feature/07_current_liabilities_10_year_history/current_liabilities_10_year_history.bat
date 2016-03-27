ECHO %1 %2
call C:\Ruby22-x64\bin\setrbvars.bat
ruby -r "./current_liabilities_10_year_history.rb" -e "Current_liabilities_10_year_history.new.doIt 'APPL'"
PAUSE