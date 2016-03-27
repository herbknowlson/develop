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
      "main":{
        "#symbol":"APPL",
        "symbol":"KO",
        "#symbol":"TM"
      },
      "APPL":{
        "company":"Apple Inc",
        "ceo":"Tim Cook",
        "feature 01":{
          "desc":"return_on_capital",
          "url":"http://www.msn.com/en-us/money/stockdetails/analysis/fi-126.1.AAPL.NAS",
          "navigation":{
            "step_01":"When I enter the symbol",
            "step_02":"And I click the symbol",
            "step_03":"And I click the ANALYSIS tab",
            "step_04":"And I click the GROWTH tab",
            "step_05":"And I click the MANAGEMENT EFFECTIVENESS tab",
            "step_06":"And I see Return on Capital % (for ex: 29.64)"
          },
          "xpath":"//li/span/p",
          "aDESC_INDEX":120,
          "aVALUE_INDEX":122
        },
        "feature 01a":{
          "desc":"return_on_capital_5_year_avg",
          "url":"http://www.msn.com/en-us/money/stockdetails/analysis/fi-126.1.AAPL.NAS",
          "xpath":"//li/span/p",
          "aDESC_INDEX":121,
          "aVALUE_INDEX":123
        },
        "feature 02":{
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
      "KO":{
        "company":"Coca-Cola Co",
        "ceo":"Muhtar Kent",
        "feature 01":{
          "desc":"return_on_capital",
          "url":"http://www.msn.com/en-us/money/stockdetails/analysis/fi-126.1.KO.NAS",
          "navigation":{
            "step_01":"When I enter the symbol",
            "step_02":"And I click the symbol",
            "step_03":"And I click the ANALYSIS tab",
            "step_04":"And I click the GROWTH tab",
            "step_05":"And I click the MANAGEMENT EFFECTIVENESS tab",
            "step_06":"And I see Return on Capital % (for ex: 29.64)"
          },
          "#xpath":"//li/span/p",
          "xpath":"//li/span/p",
          "aDESC_INDEX":93,
          "aVALUE_INDEX":95
        },
        "feature 01a":{
          "desc":"return_on_capital_5_year_avg",
          "url":"http://www.msn.com/en-us/money/stockdetails/analysis/fi-126.1.KO.NAS",
          "xpath":"//li/span/p",
          "aDESC_INDEX":94,
          "aVALUE_INDEX":96
        },
        "feature 02":{
          "desc":"sales_10_year_history",
          "url":"http://www.advfn.com/stock-market/NASDAQ/KO/financials?btn=start_date&start_date=13&mode=annual_reports",
          "url2":"http://www.advfn.com/stock-market/NASDAQ/KO/financials?btn=start_date&start_date=18&mode=annual_reports",
          "xpath":"//text()[. = \'operating revenue\']/parent::*/following-sibling::*",
          "aDESC_INDEX":0,
          "aVALUE_INDEX":1
        },
        "feature 03":{
          "desc":"eps_10_year_history",
          "url":"http://www.advfn.com/stock-market/NASDAQ/KO/financials?btn=start_date&start_date=13&mode=annual_reports",
          "url2":"http://www.advfn.com/stock-market/NASDAQ/KO/financials?btn=start_date&start_date=18&mode=annual_reports",
          "xpath":"//text()[. = \'EPS from Total Operations (YTD)\']/parent::*/following-sibling::*",
          "aDESC_INDEX":0,
          "aVALUE_INDEX":1
        },
        "feature 04":{
          "desc":"book_value_per_share_10_year_history",
          "url":"http://www.advfn.com/stock-market/NASDAQ/KO/financials?btn=start_date&start_date=13&mode=annual_reports",
          "url2":"http://www.advfn.com/stock-market/NASDAQ/KO/financials?btn=start_date&start_date=18&mode=annual_reports",
          "xpath":"//text()[. = \'book value per share\']/parent::*/following-sibling::*",
          "aDESC_INDEX":0,
          "aVALUE_INDEX":1
        },
        "feature 05":{
          "desc":"cash_from_total_operating_activities_10_year_history",
          "url":"http://www.advfn.com/stock-market/NASDAQ/KO/financials?btn=start_date&start_date=13&mode=annual_reports",
          "url2":"http://www.advfn.com/stock-market/NASDAQ/KO/financials?btn=start_date&start_date=18&mode=annual_reports",
          "xpath":"//text()[. = \'net cash from total operating activities\']/parent::*/following-sibling::*",
          "aDESC_INDEX":0,
          "aVALUE_INDEX":1
        },
        "feature 06":{
          "desc":"current_assets_10_year_history",
          "url":"http://www.advfn.com/stock-market/NASDAQ/KO/financials?btn=start_date&start_date=13&mode=annual_reports",
          "url2":"http://www.advfn.com/stock-market/NASDAQ/KO/financials?btn=start_date&start_date=18&mode=annual_reports",
          "xpath":"//text()[. = \'total current assets\']/parent::*/following-sibling::*",
          "aDESC_INDEX":0,
          "aVALUE_INDEX":1
        },
        "feature 07":{
          "desc":"current_liabilities_10_year_history",
          "url":"http://www.advfn.com/stock-market/NASDAQ/KO/financials?btn=start_date&start_date=13&mode=annual_reports",
          "url2":"http://www.advfn.com/stock-market/NASDAQ/KO/financials?btn=start_date&start_date=18&mode=annual_reports",
          "xpath":"//text()[. = \'total liabilities\']/parent::*/following-sibling::*",
          "aDESC_INDEX":0,
          "aVALUE_INDEX":1
        },
        "feature 08":{
          "desc":"pe_and_eps",
          "url":"http://www.msn.com/en-us/money/stockdetails/fi-126.1.KO.NAS",
          "xpath":"//p",
          "aDESC_INDEX":18,
          "aVALUE_INDEX":19
        },
        "feature 09":{
          "desc":"growth_estimate",
          "url":"http://finance.yahoo.com/q/ae?s=ko+analyst+estimates",
          "xpath":"//text()[. = \'Next 5 Years (per annum)\']/parent::*/following-sibling::*",
          "aDESC_INDEX":0,
          "aVALUE_INDEX":0
        },
        "feature 10":{
          "desc":"pe_ratio_ltm",
          "url":"http://www.advfn.com/stock-market/NASDAQ/KO/financials",
          "xpath":"//td",
          "aDESC_INDEX":404,
          "aVALUE_INDEX":405
        },
        "feature A00":{
          "desc":"company_symbol_and_name",
          "url":"http://www.msn.com/en-us/money/stockdetails/fi-126.1.KO.NAS",
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
          "url":"http://www.msn.com/en-us/money/stockdetails/fi-126.1.KO.NAS",
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
        "feature 01a":{
          "desc":"return_on_capital_5_year_avg",
          "url":"http://www.msn.com/en-us/money/stockdetails/analysis/fi-126.1.TM.NAS",
          "xpath":"//li/span/p",
          "aDESC_INDEX":121,
          "aVALUE_INDEX":123
        },
        "feature 02":{
          "desc":"sales_10_year_history",
          "url":"http://www.advfn.com/stock-market/NASDAQ/TM/financials?btn=start_date&start_date=13&mode=annual_reports",
          "url2":"http://www.advfn.com/stock-market/NASDAQ/TM/financials?btn=start_date&start_date=18&mode=annual_reports",
          "xpath":"//text()[. = \'operating revenue\']/parent::*/following-sibling::*",
          "aDESC_INDEX":0,
          "aVALUE_INDEX":1
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
