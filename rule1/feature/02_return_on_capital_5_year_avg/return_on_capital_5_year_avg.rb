require_relative '../../../helpers/htmlParser'
include HtmlParser
  
class ReturnOnCapital5YearAvg
  
  URL = "http://www.msn.com/en-us/money/stockdetails/analysis/fi-126.1.AAPL.NAS"
  XP = "//li/span/p" #works with analysis
  DESC_INDEX = 121
  VALUE_INDEX = 123
  RESULTS_JSON = "./results/return_on_capital_5_year_avg.json"
  RESULTS_HTML = "./results/return_on_capital_5_year_avg.html"
  
  HtmlParser.parseHtml(URL, XP, DESC_INDEX, VALUE_INDEX, RESULTS_JSON, RESULTS_HTML)
  
end
