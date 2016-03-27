require_relative '../../../helpers/htmlParser'
include HtmlParser
  
class Pe_ratio_ltm
  myStocks = HtmlParser.myStocks
  aSYMBOL = myStocks["main"]["symbol"]
  #aURL = "http://www.msn.com/en-us/money/stockdetails/fi-126.1.AAPL.NAS"
  aURL = "http://www.advfn.com/stock-market/NASDAQ/AAPL/financials"
  #aURL = "http://www.msn.com/en-us/money/stockdetails/fi-126.1.AAPL.NAS"
  #aXPath = "//*[@class='atag']"
  aXPATH = "//p" 
  #aXPath = "//text()[. = 'P/E Ratio (EPS)']/parent::*/following-sibling::*"
  #aXPath = "//text()[. = 'PE Ratio - LTM']/parent::*/following-sibling::*"
  
  #puts aURL
  #puts aXPATH
  aTITLE = "Pe_ratio_ltm"
  aDESC_INDEX = 0
  aDESC_INDEX = 0
  RESULTS_JSON = "./results/return_on_capital.json"
  RESULTS_HTML = "./results/return_on_capital.html"
  #aRESULTS_PATH = "../09a_pe_ratio_ltm/results/pe_ratio_ltm."
  aRESULTS_PATH = "../../../_results/" + aSYMBOL + " - 10_pe_ratio_ltm."
  aSHOW_ALL = true
  
  #HtmlParser.jsonExample()
  
  html_elements = HtmlParser.parseHtml(aURL, aXPATH, aDESC_INDEX, aDESC_INDEX, aRESULTS_PATH, aSHOW_ALL, aTITLE)

  #HtmlParser.putsElementsText(html_elements)
  #HtmlParser.writeElementsToTextFile(html_elements, "./results/textFile.txt" )
  
end