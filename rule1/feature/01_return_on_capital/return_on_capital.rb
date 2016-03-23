require_relative '../../../helpers/htmlParser'
include HtmlParser
  
class ReturnOnCapital
  
  URL = "http://www.msn.com/en-us/money/stockdetails/analysis/fi-126.1.AAPL.NAS"
  #URL = "http://www.msn.com/en-us/money/stockdetails/analysis/fi-126.1.TM.NAS"
  XP = "//li/span/p" #works with analysis
  DESC_INDEX = 120
  VALUE_INDEX = 122
  RESULTS_JSON = "./results/return_on_capital.json"
  RESULTS_HTML = "./results/return_on_capital.html"
  SHOW_ALL = false
  html_elements = HtmlParser.parseHtml(URL, XP, DESC_INDEX, VALUE_INDEX, RESULTS_JSON, RESULTS_HTML,SHOW_ALL)
  
  #html_elements = HtmlParser.parseElements(URL, XP)
  #HtmlParser.putsElements2(html_elements)
  #HtmlParser.writeElementsToTextFile(html_elements, "./results/textFileName.txt" )
  
end
