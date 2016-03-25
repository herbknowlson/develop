require_relative '../01_return_on_capital/return_on_capital'
require_relative '../02_return_on_capital_5_year_avg/return_on_capital_5_year_avg'
require_relative '../03_sales_10_year_history/sales_10_year_history'
  
module Main
  
    roc = Return_on_capital.new
    roc5 = Return_on_capital_5_year_avg.new
    sales = Sales_10_year_history.new
    aSYMBOL = "APPL"
    #aSYMBOL = "TM"
    
    roc.doIt (aSYMBOL)
    roc5.doIt (aSYMBOL)
    sales.doIt (aSYMBOL)
  
end