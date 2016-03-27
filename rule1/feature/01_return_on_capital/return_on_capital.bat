ECHO %1 %2
call C:\Ruby22-x64\bin\setrbvars.bat
ruby -r "./return_on_capital.rb" -e "Return_on_capital.new.doIt"
PAUSE