ECHO %1 %2
call C:\Ruby22-x64\bin\setrbvars.bat
ruby current_assets_10_year_history.rb %1 %2
ruby -r "./current_assets_10_year_history.rb" -e "Current_assets_10_year_history.new.doIt 'APPL'"
PAUSE