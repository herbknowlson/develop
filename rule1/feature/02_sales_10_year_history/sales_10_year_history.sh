cd develop/rule1/feature/02_sales_10_year_history

if [[ -s "$HOME/.rvm/scripts/rvm" ]] ; then # Load RVM into a shell session *as a function*
source "$HOME/.rvm/scripts/rvm" # First try to load from a user install
elif [[ -s "/usr/local/rvm/scripts/rvm" ]] ; then
source "/usr/local/rvm/scripts/rvm" # Then try to load from a root install
else
printf "ERROR: An RVM installation was not found.\n"
fi
rvm use 2.2.1
ruby -r "./sales_10_year_history.rb" -e "Sales_10_year_history.new.doIt"