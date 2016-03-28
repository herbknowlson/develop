require_relative '../01_return_on_capital/return_on_capital'
require_relative '../01a_return_on_capital_5_year_avg/return_on_capital_5_year_avg'
require_relative '../02_sales_10_year_history/sales_10_year_history'
require_relative '../03_eps_10_year_history/eps_10_year_history'
require_relative '../04_book_value_per_share_10_year_history/book_value_per_share_10_year_history'
require_relative '../05_cash_from_total_operating_activities_10_year_history/cash_from_total_operating_activities_10_year_history'
require_relative '../06_current_assets_10_year_history/current_assets_10_year_history'
require_relative '../07_current_liabilities_10_year_history/current_liabilities_10_year_history'
require_relative '../08_pe_and_eps/pe_and_eps'
require_relative '../09_growth_estimate/growth_estimate'
require_relative '../10_pe_ratio_ltm/pe_ratio_ltm'
require_relative '../A00_company_symbol_and_name/company_symbol_and_name'
require_relative '../A01_daily_quote/daily_quote'
  
module Main
    roic = Return_on_capital.new
    roic5 = Return_on_capital_5_year_avg.new
    sales = Sales_10_year_history.new
    eps = Eps_10_year_history.new
    book = Book_value_per_share_10_year_history.new
    cash = Cash_from_total_operating_activities_10_year_history.new
    assets = Current_assets_10_year_history.new
    liabilities = Current_liabilities_10_year_history.new
    earnings = Pe_and_eps.new
    growth = Growth_estimate.new
    pe_ltm = Pe_ratio_ltm.new
    symbol = Company_symbol_and_name.new
    quote = Daily_quote.new
    
    roic.navigation
    roic.testIt
    roic.doIt
    
    #roic5.doIt
    #sales.doIt
    #eps.doIt
    #book.doIt
    #cash.doIt
    #assets.doIt
    #liabilities.doIt
    #earnings.doIt
    #growth.doIt
    #pe_ltm.doIt
    #symbol.doIt
    #quote.doIt
end