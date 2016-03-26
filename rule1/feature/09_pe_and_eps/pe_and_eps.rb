require_relative '../../../helpers/htmlParser'
include HtmlParser
  
class Pe_and_eps
  aURL = "http://www.msn.com/en-us/money/stockdetails/fi-126.1.AAPL.NAS"
  aXPath = "//p" 
  #aXPath = "//text()[. = 'P/E Ratio (EPS)']/parent::*/following-sibling::*"
  
  puts aURL
  puts aXPath
  
  DESC_INDEX = 18
  VALUE_INDEX = 19
  RESULTS_JSON = "./results/return_on_capital.json"
  RESULTS_HTML = "./results/return_on_capital.html"
  SHOW_ALL = true
  HtmlParser.parseHtml(aURL, aXPath, DESC_INDEX, VALUE_INDEX, RESULTS_JSON, RESULTS_HTML, SHOW_ALL)

  #HtmlParser.putsElements2(html_elements, "Pe_and_eps")
  HtmlParser.writeElementsToTextFile(html_elements, "./results/textFile.txt", "Pe_and_eps" )
  
end