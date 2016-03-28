cd develop/rule1/feature/01_return_on_capital

if [[ -s "$HOME/.rvm/scripts/rvm" ]] ; then  # Load RVM into a shell session *as a function*
  source "$HOME/.rvm/scripts/rvm"    # First try to load from a user install
elif [[ -s "/usr/local/rvm/scripts/rvm" ]] ; then
  source "/usr/local/rvm/scripts/rvm"  # Then try to load from a root install
else
  printf "ERROR: An RVM installation was not found.\n"
fi

rvm use 2.2.1

ruby -r "./return_on_capital.rb" -e "Return_on_capital.new.navigation"
ruby -r "./return_on_capital.rb" -e "Return_on_capital.new.testIt"
ruby -r "./return_on_capital.rb" -e "Return_on_capital.new.doIt"