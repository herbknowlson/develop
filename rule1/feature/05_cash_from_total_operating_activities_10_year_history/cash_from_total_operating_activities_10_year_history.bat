ECHO %1 %2
call C:\Ruby22-x64\bin\setrbvars.bat
ruby -r "./cash_from_total_operating_activities_10_year_history.rb" -e "Cash_from_total_operating_activities_10_year_history.new.doIt 'APPL'"
PAUSE