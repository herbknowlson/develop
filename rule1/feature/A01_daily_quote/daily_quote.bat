ECHO %1 %2
call C:\Ruby22-x64\bin\setrbvars.bat
ruby -r "./daily_quote.rb" -e "Daily_quote.new.doIt"
PAUSE