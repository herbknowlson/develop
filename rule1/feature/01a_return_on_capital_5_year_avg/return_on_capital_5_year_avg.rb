require_relative '../../../helpers/htmlParser'
include HtmlParser
  
class Return_on_capital_5_year_avg

  def doIt
    aSYMBOL = myStocks["main"]["symbol"]
    aFEATURE = "feature 01a"
    company = myStocks[aSYMBOL]["company"]
    aTitle = company + " - " + self.class.name
    myStocks = HtmlParser.myStocks
    aURL = myStocks[aSYMBOL][aFEATURE]["url"]
    aXP = myStocks[aSYMBOL][aFEATURE]["xpath"]
    aDESC_INDEX = myStocks[aSYMBOL][aFEATURE]["aDESC_INDEX"].to_i
    aVALUE_INDEX = myStocks[aSYMBOL][aFEATURE]["aVALUE_INDEX"].to_i
    #aResultsPath = "../01a_return_on_capital_5_year_avg/results/return_on_capital_5_year_avg."
    aRESULTS_PATH = "../../../_results/" + aSYMBOL + " - 01a_return_on_capital_5_year_avg."
    aSHOW_ALL = false
    
    HtmlParser.parseHtml(aURL, aXP, aDESC_INDEX, aVALUE_INDEX, aRESULTS_PATH, aSHOW_ALL, aTitle)
  end
end
