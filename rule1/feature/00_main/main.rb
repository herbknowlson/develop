require_relative '../01_return_on_capital/return_on_capital'
#include Return_on_capital
require_relative '../02_return_on_capital_5_year_avg/return_on_capital_5_year_avg'
#include Return_on_capital_5_year_avg
  
module Main
  
    roc = Return_on_capital.new
    roc5 = Return_on_capital_5_year_avg.new
    
    aSYMBOL = "APPL"
    #aSYMBOL = "TM"
    
    roc.doIt (aSYMBOL)
    roc5.doIt (aSYMBOL)
  
end