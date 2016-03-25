ECHO %1 %2
call C:\Ruby22-x64\bin\setrbvars.bat
ruby -r "./return_on_capital_5_year_avg.rb" -e "Return_on_capital_5_year_avg.new.doIt 'TM'"
PAUSE