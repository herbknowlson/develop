require_relative '../../../helpers/htmlParser'
include HtmlParser
  
class Return_on_capital_5_year_avg
  #def initialize ()
 # end
  def doIt (aSYMBOL)
    aFEATURE = "feature 02"
    myStocks = HtmlParser.myStocks
    aURL = myStocks[aSYMBOL][aFEATURE]["url"]
    aXP = myStocks[aSYMBOL][aFEATURE]["xpath"]
    aDESC_INDEX = myStocks[aSYMBOL][aFEATURE]["aDESC_INDEX"].to_i
    aVALUE_INDEX = myStocks[aSYMBOL][aFEATURE]["aVALUE_INDEX"].to_i
    aResultsPath = "../02_return_on_capital_5_year_avg/results/return_on_capital_5_year_avg."
    aSHOW_ALL = false
    aTEXT = "Return_on_capital_5_year_avg"
    
    HtmlParser.parseHtml(aURL, aXP, aDESC_INDEX, aVALUE_INDEX, aResultsPath, aSHOW_ALL, aTEXT)
  end
end
