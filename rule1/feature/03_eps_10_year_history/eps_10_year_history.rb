require_relative '../../../helpers/htmlParser'
include HtmlParser
  
class Eps_10_year_history
  def doIt (aSYMBOL)
    aSYMBOL = myStocks["main"]["symbol"]
    aFEATURE = "feature 03"
    company = myStocks[aSYMBOL]["company"]
    aTITLE = company + " - " + self.class.name
    myStocks = HtmlParser.myStocks
    aURL = myStocks[aSYMBOL][aFEATURE]["url"]
    aXPATH = myStocks[aSYMBOL][aFEATURE]["xpath"]
    #aResultsPath = "../03_eps_10_year_history/results/eps_10_year_history."
    aResultsPath = "../../../_results/03_eps_10_year_history."
    html_elements1 = HtmlParser.parseElements(aURL, aXPATH)
    aURL = myStocks[aSYMBOL][aFEATURE]["url2"]
    html_elements2 = HtmlParser.parseElements(aURL, aXPATH)
    elements = html_elements1 + html_elements2
    HtmlParser.putsElements2(elements, aTITLE)
    HtmlParser.writeElementsToTextFile(elements, aResultsPath + "txt", aTITLE)
  end 
end