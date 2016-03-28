require_relative '../../../helpers/htmlParser'
include HtmlParser
  
class Return_on_capital
  
  SYMBOL = myStocks["main"]["symbol"]
  FEATURE = "feature 01"
  company = myStocks[SYMBOL]["company"]
  TITLE = company + " - " + self.class.name
  myStocks = HtmlParser.myStocks
  URL = myStocks[SYMBOL][FEATURE]["url"]
  XPATH = myStocks[SYMBOL][FEATURE]["xpath"]
  DESC_INDEX = myStocks[SYMBOL][FEATURE]["aDESC_INDEX"].to_i
  VALUE_INDEX = myStocks[SYMBOL][FEATURE]["aVALUE_INDEX"].to_i
  RESULTS_PATH = "../../../_results/" + SYMBOL + " - 01_return_on_capital."
  SHOW_ALL = false
  
  def navigation
    navigation = myStocks[SYMBOL][FEATURE]["navigation"]
    HtmlParser.putsNavigation(navigation, URL, XPATH, DESC_INDEX, VALUE_INDEX, RESULTS_PATH, SHOW_ALL, TITLE)
  end

  def testIt
    html_elements = HtmlParser.parseElements(URL, XPATH)
    HtmlParser.putsElements2(html_elements, TITLE)
  end
  
  def doIt
    HtmlParser.parseHtml(URL, XPATH, DESC_INDEX, VALUE_INDEX, RESULTS_PATH, SHOW_ALL, TITLE)
  end
end