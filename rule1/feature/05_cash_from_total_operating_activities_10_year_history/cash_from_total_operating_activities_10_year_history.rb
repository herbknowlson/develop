require_relative '../../../helpers/htmlParser'
include HtmlParser
  
class Cash_from_total_operating_activities_10_year_history  
  def doIt (aSYMBOL)
    aSYMBOL = myStocks["main"]["symbol"]
    aFEATURE = "feature 05"
    company = myStocks[aSYMBOL]["company"]
    aTITLE = company + " - " + self.class.name
    myStocks = HtmlParser.myStocks
    aXPATH = myStocks[aSYMBOL][aFEATURE]["xpath"]
    #aResultsPath = "../05_cash_from_total_operating_activities_10_year_history/results/cash_from_total_operating_activities_10_year_history."
    aResultsPath = "../../../_results/05_cash_from_total_operating_activities_10_year_history."
    aURL = myStocks[aSYMBOL][aFEATURE]["url"]
    html_elements1 = HtmlParser.parseElements(aURL, aXPATH)
    aURL = myStocks[aSYMBOL][aFEATURE]["url2"]
    html_elements2 = HtmlParser.parseElements(aURL, aXPATH)
    elements = html_elements1 + html_elements2
    HtmlParser.putsElements2(elements, aTITLE)
    HtmlParser.writeElementsToTextFile(elements, aResultsPath + "txt", aTITLE)
  end  
end