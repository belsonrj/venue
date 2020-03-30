class VenueTime::CLI::Scraper

  def self.scrape_venue
    doc = Nokogiri::HTML(open("https://www.phillymag.com/things-to-do/live-music-concert-venues-philadelphia/"))
  
    venue_1 = VenueTime::CLI::Showtime.new
    venue_1.name = doc.search("body > div:nth-child(9) > div.content-with-sidebar > div.wysiwyg > p:nth-child(11) > a > strong").text
    venue_1.address = doc.search("body > div:nth-child(9) > div.content-with-sidebar > div.wysiwyg > p:nth-child(11) > em").text
    venue_1.info = doc.at("body > div:nth-child(9) > div.content-with-sidebar > div.wysiwyg > p:nth-child(11)").text

    
    venue_2 = VenueTime::CLI::Showtime.new
    venue_2.name = doc.search("body > div:nth-child(9) > div.content-with-sidebar > div.wysiwyg > p:nth-child(21) > a > strong").text
    venue_2.address = doc.search("body > div:nth-child(9) > div.content-with-sidebar > div.wysiwyg > p:nth-child(21) > em").text
    venue_2.info = doc.search("body > div:nth-child(9) > div.content-with-sidebar > div.wysiwyg > p:nth-child(21)").text
        
    venue_3 = VenueTime::CLI::Showtime.new
    venue_3.name = doc.search("body > div:nth-child(9) > div.content-with-sidebar > div.wysiwyg > p:nth-child(30) > a > strong").text
    venue_3.address = doc.search("body > div:nth-child(9) > div.content-with-sidebar > div.wysiwyg > p:nth-child(30) > em").text
    venue_3.info = doc.search("body > div:nth-child(9) > div.content-with-sidebar > div.wysiwyg > p:nth-child(30)").text
    
    venue_4 = VenueTime::CLI::Showtime.new
    venue_4.name = doc.search("body > div:nth-child(9) > div.content-with-sidebar > div.wysiwyg > p:nth-child(25) > a > strong").text
    venue_4.address = doc.search("body > div:nth-child(9) > div.content-with-sidebar > div.wysiwyg > p:nth-child(25) > em").text
    venue_4.info = doc.search("body > div:nth-child(9) > div.content-with-sidebar > div.wysiwyg > p:nth-child(25)").text
    
    venue_5 = VenueTime::CLI::Showtime.new
    venue_5.name = doc.search("body > div:nth-child(9) > div.content-with-sidebar > div.wysiwyg > p:nth-child(35) > a > strong").text
    venue_5.address = doc.search("body > div:nth-child(9) > div.content-with-sidebar > div.wysiwyg > p:nth-child(35) > em").text
    venue_5.info = doc.search("body > div:nth-child(9) > div.content-with-sidebar > div.wysiwyg > p:nth-child(35)").text
    
  end  

end