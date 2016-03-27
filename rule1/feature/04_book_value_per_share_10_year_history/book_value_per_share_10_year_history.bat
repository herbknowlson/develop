ECHO %1 %2
call C:\Ruby22-x64\bin\setrbvars.bat
ruby book_value_per_share_10_year_history.rb %1 %2
ruby -r "./book_value_per_share_10_year_history.rb" -e "Book_value_per_share_10_year_history.new.doIt 'APPL'"
PAUSE