require_relative '../../../helpers/htmlParser'
include HtmlParser
  
class Sales10YearHistory
  #start_date=0 - 1993
  #start_date=1 - 1994
  #start_date=2 - 1995
  #start_date=3 - 1996
  #start_date=4 - 1997
  #start_date=6 - 1998
  #start_date=6 - 1999
  #start_date=7 - 2000
  #start_date=8 - 2001
  #start_date=9 - 2002
  #start_date=10 - 2003
  #start_date=11 - 2004
  #start_date=12 - 2005
  #####start_date=13 - 2006
  #start_date=14 - 2007
  #start_date=15 - 2008
  #start_date=16 - 2009
  #start_date=17 - 2010
  #####start_date=18 - 2011
  #start_date=19 - 2012
  #start_date=20 - 2013
  #start_date=21 - 2014
  #start_date=22 - 2015
  
  aURL = "http://www.advfn.com/stock-market/NASDAQ/AAPL/financials?btn=start_date&start_date=13&mode=annual_reports"
  aXPath = "//text()[. = 'EPS from Total Operations (YTD)']/parent::*/following-sibling::*"

  html_elements1 = HtmlParser.parseElements(aURL, aXPath)
  
  aURL = "http://www.advfn.com/stock-market/NASDAQ/AAPL/financials?btn=start_date&start_date=18&mode=annual_reports"
  aXPath = "//text()[. = 'EPS from Total Operations (YTD)']/parent::*/following-sibling::*"

  html_elements2 = HtmlParser.parseElements(aURL, aXPath)
  
  elements = html_elements1 + html_elements2
  HtmlParser.putsElementsText(elements)
  HtmlParser.writeElementsToTextFile(elements, "./results/textFile.txt" )
  
end