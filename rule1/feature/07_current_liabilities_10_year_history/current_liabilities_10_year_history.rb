require_relative '../../../helpers/htmlParser'
include HtmlParser
  
class Current_liabilities_10_year_history
  def doIt
    aSYMBOL = myStocks["main"]["symbol"]
    aFEATURE = "feature 07"
    company = myStocks[aSYMBOL]["company"]
    aTITLE = company + " - " + self.class.name
    myStocks = HtmlParser.myStocks
    aXPATH = myStocks[aSYMBOL][aFEATURE]["xpath"]
    #aResultsPath = "../07_current_liabilities_10_year_history/results/current_liabilities_10_year_history."
    aRESULTS_PATH = "../../../_results/" + aSYMBOL + " - 07_current_liabilities_10_year_history."
    aURL = myStocks[aSYMBOL][aFEATURE]["url"]
    html_elements1 = HtmlParser.parseElements(aURL, aXPATH)
    aURL = myStocks[aSYMBOL][aFEATURE]["url2"]
    html_elements2 = HtmlParser.parseElements(aURL, aXPATH)
    elements = html_elements1 + html_elements2
    HtmlParser.putsElements2(elements, aTITLE)
    HtmlParser.writeElementsToTextFile(elements, aRESULTS_PATH + "txt", aTITLE)
  end 
end