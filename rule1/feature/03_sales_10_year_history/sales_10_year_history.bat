ECHO %1 %2
call C:\Ruby22-x64\bin\setrbvars.bat
ruby sales_10_year_history.rb %1 %2
ruby -r "./sales_10_year_history.rb" -e "Sales_10_year_history.new.doIt 'APPL'"
PAUSE