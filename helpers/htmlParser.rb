require "open-uri"
require 'rubygems'
require 'nokogiri'
require 'restclient'
require_relative 'helpers'
require_relative 'Common'
  
module HtmlParser
  
  def writeElementsToHtmlFile(elements, fileName)
    File.open(fileName,"w") do |f|
      tr = "<table style=width:75% CLASS=boldtable><tr>"
      f.puts tr
      for i in 0 ... keys.size
        td = "<td>" + keys[i] + values[i] + "</td>"
        f.puts td 
        tr = "</tr><tr>"
        f.puts tr
      end
    end # close the file
  end
  
  def writeElementsToTextFile(elements, fileName)
    i = 0
    File.open(fileName,"w") do |f|
      elements.each do |e|
        f.puts i.to_s + " - " + e.text #Alias for inner_text
        i = i + 1
      end
    end # close the filed
  end
  
  def putsElementsText(elements)
    elements.each do |e|
      puts e.text #Alias for inner_text
    end
  end
  
  def putsElements2(elements)
    i = 0
    for e in elements
      puts i.to_s + " - " + e
      i = i + 1
    end
  end
  
  def parseElements(aURL, aXP)
    url = aURL
    nokogiri_object = Nokogiri::HTML(RestClient.get(url))
    xp = aXP
    html_elements = nokogiri_object.xpath(xp) #contains the HTML page elements that match the Xpath
    return html_elements
  end

  def parseHtml(aURL, aXP, aDESC_INDEX, aVALUE_INDEX, aRESULTS_JSON, aRESULTS_HTML)

    url = aURL
    page = Nokogiri::HTML(RestClient.get(url))
    xp = aXP
    elements = page.xpath(xp)
   
    i = 0
    for e in elements
      puts i.to_s + " - " + e
      i = i + 1
    end
  
    keys = []
    values = []
   
    keys[0] = elements[aDESC_INDEX].text + ": "
    values[0] = elements[aVALUE_INDEX].text
  
    tempHash = Hash[keys.zip values]
    require 'json'
    tempHash.to_json
    puts JSON.pretty_generate(tempHash)
    
  #
  # Write to a file
  #
    File.open(aRESULTS_JSON,"w") do |f|
      f.write(tempHash.to_json)
    end
    
    File.open(aRESULTS_HTML,"w") do |f|
      tr = "<table style=width:75% CLASS=boldtable><tr>"
      f.puts tr
      for i in 0 ... keys.size
        td = "<td>" + keys[i] + values[i] + "</td>"
        f.puts td 
        tr = "</tr><tr>"
        f.puts tr
      end
    end # close the file
    
    return values
  end
end
