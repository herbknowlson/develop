require_relative '../../../helpers/htmlParser'
include HtmlParser
  
class Growth_estimate
  def doIt
    myStocks = HtmlParser.myStocks
    aSYMBOL = myStocks["main"]["symbol"]
    aFEATURE = "feature 09"
    company = myStocks[aSYMBOL]["company"]
    aTITLE = company + " - " + self.class.name
    aXPATH = myStocks[aSYMBOL][aFEATURE]["xpath"]
    aDESC_INDEX = myStocks[aSYMBOL][aFEATURE]["aDESC_INDEX"].to_i
    aVALUE_INDEX = myStocks[aSYMBOL][aFEATURE]["aVALUE_INDEX"].to_i
    aRESULTS_PATH = "../../../_results/" + aSYMBOL + " - 09_growth_estimate."
    aURL = myStocks[aSYMBOL][aFEATURE]["url"]
    #html_elements = HtmlParser.parseElements(aURL, aXPATH)
    #HtmlParser.putsElements2(html_elements, aTITLE)
    aSHOW_ALL = false
    HtmlParser.parseHtml(aURL, aXPATH, aDESC_INDEX, aVALUE_INDEX, aRESULTS_PATH, aSHOW_ALL, aTITLE)
  end   
end