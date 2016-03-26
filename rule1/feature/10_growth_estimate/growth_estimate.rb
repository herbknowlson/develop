require_relative '../../../helpers/htmlParser'
include HtmlParser
  
class Growth_estimate

  aURL = "http://finance.yahoo.com/q/ae?s=aapl+analyst+estimates"
  #aXPath = "//p" 
  aXPATH = "//text()[. = 'Next 5 Years (per annum)']/parent::*/following-sibling::*"
  aTITLE = "Growth_estimate"
  aDESC_INDEX = 0
  aDESC_INDEX = 0
  RESULTS_JSON = "./results/return_on_capital.json"
  RESULTS_HTML = "./results/return_on_capital.html"
  aRESULTS_PATH = "../10_growth_estimate/results/growth_estimate."
  aSHOW_ALL = true
  
  HtmlParser.parseHtml(aURL, aXPATH, aDESC_INDEX, aDESC_INDEX, aRESULTS_PATH, aSHOW_ALL, aTITLE)

  #HtmlParser.putsElementsText(html_elements)
  #HtmlParser.writeElementsToTextFile(html_elements, "./results/textFileName.txt" )
  
end