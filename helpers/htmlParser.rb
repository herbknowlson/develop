require "open-uri"
require 'rubygems'
require 'nokogiri'
require 'restclient'
require_relative 'helpers'
require_relative 'common'
require_relative 'myStocks'
include MyStocks

module HtmlParser

  def putsNavigation(elements, aURL, aXPATH, aDESC_INDEX, aVALUE_INDEX, aRESULTS_PATH, aSHOW_ALL, aTITLE)
    puts aTITLE.green
    puts aURL.red
    puts aXPATH.brown
    elements.each do |e|
      #puts e.text #Alias for inner_text
      puts e
    end
  end
  
  def parseElements(aURL, aXPATH)
    puts aURL.red
    puts aXPATH.brown
    url = aURL
    nokogiri_object = Nokogiri::HTML(RestClient.get(url))
    xp = aXPATH
    html_elements = nokogiri_object.xpath(xp) #contains the HTML page elements that match the Xpath
    return html_elements
  end

  def parseHtml(aURL, aXPATH, aDESC_INDEX, aVALUE_INDEX, aRESULTS_PATH, aSHOW_ALL, aTITLE)

    elements = self.parseElements(aURL, aXPATH)
    #putsElements2(elements, aTITLE)
    tempHash = createJson(aVALUE_INDEX, aTITLE, elements)
    
    if aSHOW_ALL
      putsElements2(elements, aTITLE)
      self.showResultsOnTheScreen(elements, aTITLE)
    end
    
    keys = []
    values = []
    keys[0] = aTITLE
    values[0] = elements[aVALUE_INDEX].text
 
    aRESULTS_JSON = aRESULTS_PATH + "json"
    aRESULTS_HTML = aRESULTS_PATH + "html"
    aRESULTS_TEXT = aRESULTS_PATH + "txt"
    #writeResultsToHtmlFile(aRESULTS_HTML, keys, values)
    writeResultsToTextFile(aRESULTS_TEXT, values, aTITLE)
    #writeResultsToJson(tempHash, aRESULTS_JSON)

    return values
  end
  
  def createJson(aVALUE_INDEX, aTITLE, elements)
    keys = []
    values = []
   
    keys[0] = aTITLE
    values[0] = elements[aVALUE_INDEX].text
  
    tempHash = Hash[keys.zip values]
    require 'json'
    tempHash.to_json
    
    puts JSON.pretty_generate(tempHash)
    return tempHash
  end
  
  def writeResultsToJson(tempHash, aRESULTS_JSON)
    File.open(aRESULTS_JSON,"w") do |f|
      f.write(tempHash.to_json)
    end
  end
  
  def writeResultsToHtmlFile (aRESULTS_HTML, keys, values)
    File.open(aRESULTS_HTML,"w") do |f|
      tr = "<table style=width:75% CLASS=boldtable><tr>"
      f.puts tr
      for i in 0 ... keys.size
        td = "<td>" + keys[i] + " " + values[i] + "</td>"
        f.puts td 
        tr = "</tr><tr>"
        f.puts tr
      end
    end # close the file
  end
  
  def myStocks ()
    return MyStocks.all()
  end
  
  def showResultsOnTheScreen(elements, aTEXT)
    puts aTEXT
    i = 0
    for e in elements
      puts i.to_s + " - " + e
      i = i + 1
    end
  end
  
  def putsElements(elements, aTEXT)
    puts aTEXT.green
    elements.each do |e|
      #puts e.text #Alias for inner_text
      puts e
    end
  end
  
  def putsElements2(elements, aTITLE)
    puts aTITLE.green
    puts elements.size.to_s.green
    i = 0
    for e in elements
      puts i.to_s + " - " + e.text
      i = i + 1
    end
  end
  
  def writeResultsToTextFile(aRESULTS_TEXT, values, aTEXT)
    File.open(aRESULTS_TEXT,"w") do |f|
      f.puts aTEXT
      values.each do |e|
        f.puts e
      end
    end # close the file
  end
  
  def writeElementsToTextFile(elements, fileName, aTEXT)
    i = 0
    File.open(fileName,"w") do |f|
      f.puts aTEXT
      elements.each do |e|
        #f.puts i.to_s + " - " + e.text #Alias for inner_text
        f.puts e.text #Alias for inner_text
        i = i + 1
      end
    end # close the file
  end
end
