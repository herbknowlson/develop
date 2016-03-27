ECHO %1 %2
call C:\Ruby22-x64\bin\setrbvars.bat
ruby eps_10_year_history.rb %1 %2
ruby -r "./eps_10_year_history.rb" -e "Eps_10_year_history.new.doIt 'APPL'"
PAUSE