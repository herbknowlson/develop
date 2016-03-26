    #
    # Convert JSON to a hash
    #
    #--------------------------------------------------
    # Usage
    #-------------------------------------------------
    #puts my_stocks["APPL"]
    #
    #aURL = myStocks[aSYMBOL][aFEATURE]["url"]
    #  puts myStocks["APPL"]["feature 01"]["url"]
    #aXPATH = myStocks[aSYMBOL][aFEATURE]["xpath"]
    #
    #puts my_stocks["APPL"]["company"]
    #puts my_stocks["APPL"]["ceo"]
    #puts JSON.pretty_generate(my_stocks) #print the JSON
    
module MyStocks
  
  def all()
    my_string =
    '{
      "APPL":{
        "company":"Apple Inc",
        "ceo":"Tim Cook",
        "feature 01":{
          "desc":"return_on_capital",
          "url":"http://www.msn.com/en-us/money/stockdetails/analysis/fi-126.1.AAPL.NAS",
          "xpath":"//li/span/p",
          "aDESC_INDEX":120,
          "aVALUE_INDEX":122
        },
        "feature 02":{
          "desc":"return_on_capital_5_year_avg",
          "url":"http://www.msn.com/en-us/money/stockdetails/analysis/fi-126.1.AAPL.NAS",
          "xpath":"//li/span/p",
          "aDESC_INDEX":121,
          "aVALUE_INDEX":123
        },
        "feature 03":{
          "desc":"sales_10_year_history",
          "url":"http://www.advfn.com/stock-market/NASDAQ/AAPL/financials?btn=start_date&start_date=13&mode=annual_reports",
          "url2":"http://www.advfn.com/stock-market/NASDAQ/AAPL/financials?btn=start_date&start_date=18&mode=annual_reports",
          "xpath":"//text()[. = \'operating revenue\']/parent::*/following-sibling::*",
          "aDESC_INDEX":0,
          "aVALUE_INDEX":1
        },
        "feature A00":{
          "desc":"company_symbol_and_name",
          "url":"http://www.msn.com/en-us/money/stockdetails/fi-126.1.AAPL.NAS",
          "xpath1":"(//div)[19]",
          "xpath2":"(//div)[20]",
          "#xpath":"(//div)[33]",
          "#xpath":"//*[@id=\'live-quote\']",
          "#xpath":"//div[@id=\'maincontent\']",
          "#xpath":"//div[@id=\'maincontent\']/div/div",
          "#xpath":"//div/div[@id=\'content\']",
          "#xpath":"//div[@id=\'maincontent\' and ./div]",
          "#xpath":"//div[@id=\'live-quote\']/div[@class=\"live-quote-title\"]",
          "#xpath":"//div[@id=\'maincontent\']",
          "#xpath":"(//div)[33]",
          "#xpath":"//div[@class=\"live-quote-title\"]",
          "#xpath":"//div[contains(@class,\"live-quote-title\")]",
          "#xpath":"//*[contains(@class,\'live-quote-title\')]",
          "aDESC_INDEX":0,
          "aVALUE_INDEX":1
        },
        "feature A01":{
          "desc":"daily_quote",
          "url":"http://www.msn.com/en-us/money/stockdetails/fi-126.1.AAPL.NAS",
          "xpath":"(//span)[2]",
          "aDESC_INDEX":0,
          "aVALUE_INDEX":1
        }
      },
      
      "TM":{
        "company":"Toyota",
        "ceo":"Akio Toyoda",
        "feature 01":{
          "desc":"return_on_investment_capital",
          "url":"http://www.msn.com/en-us/money/stockdetails/analysis/fi-126.1.TM.NAS",
          "xpath":"//li/span/p",
          "aDESC_INDEX":120,
          "aVALUE_INDEX":122
        },
        "feature 02":{
          "desc":"return_on_capital_5_year_avg",
          "url":"http://www.msn.com/en-us/money/stockdetails/analysis/fi-126.1.TM.NAS",
          "xpath":"//li/span/p",
          "aDESC_INDEX":121,
          "aVALUE_INDEX":123
        },
        "feature A01":{
          "desc":"daily_quote",
          "url":"http://www.msn.com/en-us/money/stockdetails/fi-126.1.TM.NAS",
          "xpath":"(//span)[2]",
          "aDESC_INDEX":0,
          "aVALUE_INDEX":1
        }
      }
    }'
    my_stocks = JSON.parse(my_string) #Convert JSON to a hash
    return my_stocks
  end
end
