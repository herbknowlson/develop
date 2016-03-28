require_relative '../../../helpers/htmlParser'
include HtmlParser
  
class Company_symbol_and_name
  def doIt
    aSYMBOL = myStocks["main"]["symbol"]
    aFEATURE = "feature A00"
    aCOMPANY = myStocks[aSYMBOL]["company"]
    aTITLE = aCOMPANY + " - " + self.class.name
    aURL = myStocks[aSYMBOL][aFEATURE]["url"]
    aXPATH = myStocks[aSYMBOL][aFEATURE]["xpath1"]
    #aXPATH = "//div[contains(@class,'live-quote-title')]"
    aDESC_INDEX = 0
    aVALUE_INDEX = 0
    aRESULTS_PATH = "../../../_results/" + aSYMBOL + " - A00_company_symbol_and_name."
    aSHOW_ALL = true
    
    html_elements = HtmlParser.parseElements(aURL, aXPATH)
    HtmlParser.putsElements2(html_elements, aTITLE)
    
    aXPATH = myStocks[aSYMBOL][aFEATURE]["xpath2"]
    html_elements = HtmlParser.parseElements(aURL, aXPATH)
    HtmlParser.putsElements2(html_elements, aTITLE)
    HtmlParser.writeElementsToTextFile(html_elements, aRESULTS_PATH + "txt", aTITLE)
    #html_elements = HtmlParser.parseHtml(aURL, aXPATH, aDESC_INDEX, aVALUE_INDEX, aRESULTS_PATH, aSHOW_ALL, aTITLE)
  end
end