require_relative '../../../helpers/htmlParser'
include HtmlParser
  
class Daily_quote

  def doIt ()
    aSYMBOL = myStocks["main"]["symbol"]
    aFEATURE = "feature A01"
    aCOMPANY = myStocks[aSYMBOL]["company"]
    aTITLE = aCOMPANY + " - " + self.class.name
    
    aURL = myStocks[aSYMBOL][aFEATURE]["url"]
    aXPATH = myStocks[aSYMBOL][aFEATURE]["xpath"]
    aDESC_INDEX = 0
    aVALUE_INDEX = 0
    aRESULTS_PATH = "../../../_results/" + aSYMBOL + " - A01_daily_quote."
    
    aSHOW_ALL = false
    
    #html_elements = HtmlParser.parseElements(aURL, aXPATH)
    #HtmlParser.putsElements2(html_elements, aTITLE)
    
    html_elements = HtmlParser.parseHtml(aURL, aXPATH, aDESC_INDEX, aVALUE_INDEX, aRESULTS_PATH, aSHOW_ALL, aTITLE)
  end
end