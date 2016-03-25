    #
    # #Convert JSON to a hash
    #
    #--------------------------------------------------
    # Usage
    #-------------------------------------------------
    #puts my_stocks["APPL"]
    #puts my_stocks["APPL"]["feature 01"]["url"]
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
        }
      },
  
      "last_item":{
        "stats":{
          "a":8,
          "b":12,
          "c":10
        }
      }
    }'
    my_stocks = JSON.parse(my_string) #Convert JSON to a hash
    return my_stocks
  end
end
