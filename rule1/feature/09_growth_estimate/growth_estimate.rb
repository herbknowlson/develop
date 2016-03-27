require_relative '../../../helpers/htmlParser'
include HtmlParser
  
class Growth_estimate
  def doIt (aSYMBOL)
    myStocks = HtmlParser.myStocks
    aSYMBOL = myStocks["main"]["symbol"]
    aFEATURE = "feature 09"
    company = myStocks[aSYMBOL]["company"]
    aTITLE = company + " - " + self.class.name
    aXPATH = myStocks[aSYMBOL][aFEATURE]["xpath"]
    aDESC_INDEX = myStocks[aSYMBOL][aFEATURE]["aDESC_INDEX"].to_i
    aVALUE_INDEX = myStocks[aSYMBOL][aFEATURE]["aVALUE_INDEX"].to_i
    aRESULTS_PATH = "../09_growth_estimate/results/growth_estimate."
    aURL = myStocks[aSYMBOL][aFEATURE]["url"]
    
    #html_elements = HtmlParser.parseElements(aURL, aXPATH)
    #HtmlParser.putsElements2(html_elements, aTITLE)
    
    aSHOW_ALL = false
    HtmlParser.parseHtml(aURL, aXPATH, aDESC_INDEX, aVALUE_INDEX, aRESULTS_PATH, aSHOW_ALL, aTITLE)
  
  end 

  #aURL = "http://finance.yahoo.com/q/ae?s=aapl+analyst+estimates"
  ##aXPath = "//p" 
  #aXPATH = "//text()[. = 'Next 5 Years (per annum)']/parent::*/following-sibling::*"
  #aTITLE = "Growth_estimate"
  #aDESC_INDEX = 0
  #aDESC_INDEX = 0
  #RESULTS_JSON = "./results/return_on_capital.json"
  #RESULTS_HTML = "./results/return_on_capital.html"
  #aRESULTS_PATH = "../10_growth_estimate/results/growth_estimate."
  #aSHOW_ALL = true
  
  #HtmlParser.parseHtml(aURL, aXPATH, aDESC_INDEX, aDESC_INDEX, aRESULTS_PATH, aSHOW_ALL, aTITLE)

  #HtmlParser.putsElementsText(html_elements)
  #HtmlParser.writeElementsToTextFile(html_elements, "./results/textFileName.txt" )
  
end