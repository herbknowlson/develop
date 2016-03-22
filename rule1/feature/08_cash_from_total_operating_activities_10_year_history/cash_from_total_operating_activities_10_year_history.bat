ECHO %1 %2
call C:\Ruby22-x64\bin\setrbvars.bat
ruby cash_from_total_operating_activities_10_year_history.rb %1 %2
PAUSE