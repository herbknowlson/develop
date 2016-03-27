require_relative '../../../helpers/htmlParser'
include HtmlParser
  
class Pe_and_eps
  def doIt (aSYMBOL)
    myStocks = HtmlParser.myStocks
    aSYMBOL = myStocks["main"]["symbol"]
    aFEATURE = "feature 08"
    company = myStocks[aSYMBOL]["company"]
    aTITLE = company + " - " + self.class.name
    aXPATH = myStocks[aSYMBOL][aFEATURE]["xpath"]
    aDESC_INDEX = myStocks[aSYMBOL][aFEATURE]["aDESC_INDEX"].to_i
    aVALUE_INDEX = myStocks[aSYMBOL][aFEATURE]["aVALUE_INDEX"].to_i
    aRESULTS_PATH = "../08_pe_and_eps/results/pe_and_eps."
    aURL = myStocks[aSYMBOL][aFEATURE]["url"]
    
    #html_elements = HtmlParser.parseElements(aURL, aXPATH)
    #HtmlParser.putsElements2(html_elements, aTITLE)
    
    aSHOW_ALL = false
    parseHtml(aURL, aXPATH, aDESC_INDEX, aVALUE_INDEX, aRESULTS_PATH, aSHOW_ALL, aTITLE)
  
  end 
end