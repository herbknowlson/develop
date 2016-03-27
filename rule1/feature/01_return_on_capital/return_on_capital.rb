require_relative '../../../helpers/htmlParser'
include HtmlParser
  
class Return_on_capital
  
  def doIt (aSYMBOL)
    aSYMBOL = myStocks["main"]["symbol"]
    aFEATURE = "feature 01"
    company = myStocks[aSYMBOL]["company"]
    aTITLE = company + " - " + self.class.name
    myStocks = HtmlParser.myStocks
    aURL = myStocks[aSYMBOL][aFEATURE]["url"]
    aXPATH = myStocks[aSYMBOL][aFEATURE]["xpath"]
    aDESC_INDEX = myStocks[aSYMBOL][aFEATURE]["aDESC_INDEX"].to_i
    aVALUE_INDEX = myStocks[aSYMBOL][aFEATURE]["aVALUE_INDEX"].to_i
    #aResultsPath = "../01_return_on_capital/results/return_on_capital."
    aResultsPath = "../../../_results/01_return_on_capital."
    aSHOW_ALL = false

    #html_elements = HtmlParser.parseElements(aURL, aXPATH)
    #HtmlParser.putsElements2(html_elements, aTITLE)
    
    HtmlParser.parseHtml(aURL, aXPATH, aDESC_INDEX, aVALUE_INDEX, aResultsPath, aSHOW_ALL, aTITLE)
    
  end
end