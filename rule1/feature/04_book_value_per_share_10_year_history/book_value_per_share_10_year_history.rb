require_relative '../../../helpers/htmlParser'
include HtmlParser
  
class Book_value_per_share_10_year_history
  def doIt (aSYMBOL)
    aSYMBOL = myStocks["main"]["symbol"]
    aFEATURE = "feature 04"
    company = myStocks[aSYMBOL]["company"]
    aTITLE = company + " - " + self.class.name
    myStocks = HtmlParser.myStocks
    aURL = myStocks[aSYMBOL][aFEATURE]["url"]
    aXPATH = myStocks[aSYMBOL][aFEATURE]["xpath"]
    #aResultsPath = "../04_book_value_per_share_10_year_history/results/book_value_per_share_10_year_history."
    aResultsPath = "../../../_results/04_book_value_per_share_10_year_history."
    html_elements1 = HtmlParser.parseElements(aURL, aXPATH)
    aURL = myStocks[aSYMBOL][aFEATURE]["url2"]
    html_elements2 = HtmlParser.parseElements(aURL, aXPATH)
    elements = html_elements1 + html_elements2
    HtmlParser.putsElements2(elements, aTITLE)
    HtmlParser.writeElementsToTextFile(elements, aResultsPath + "txt", aTITLE)
  end   
end