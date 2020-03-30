class VenueTime::CLI::Scraper
  attr_accessor :name, :address, :info

  @@all = []
  
  def initialize
    @name = name
    @address = address
    @info = info
  end
  
  def self.all
    @@all
  end
  
  
#  def initialize
#    @venue = VenueTime::CLI::Showtime.new
#    @doc = Nokogiri::HTML(open("https://www.phillymag.com/things-to-do/live-music-concert-venues-philadelphia/"))
#  end



  def self.scrape_venue
    doc = Nokogiri::HTML(open("https://www.phillymag.com/things-to-do/live-music-concert-venues-philadelphia/"))
  
    venue_1 = self.new
    venue_1.name = doc.search("body > div:nth-child(9) > div.content-with-sidebar > div.wysiwyg > p:nth-child(5) > a > strong").text
    venue_1.address = doc.search("body > div:nth-child(9) > div.content-with-sidebar > div.wysiwyg > p:nth-child(7) > em").text
    venue_1.info = doc.search("div.wysiwyg p>br")
    
    venue_2 = self.new
    venue_2.name = doc.search("body > div:nth-child(9) > div.content-with-sidebar > div.wysiwyg > p:nth-child(8) > a > strong").text
    venue_2.address = doc.search("body > div:nth-child(9) > div.content-with-sidebar > div.wysiwyg > p:nth-child(10) > em").text
    #venue_2.info = doc.search("")
        
    venue_3 = self.new
    venue_3.name = doc.search("body > div:nth-child(9) > div.content-with-sidebar > div.wysiwyg > p:nth-child(18) > a > strong").text
    venue_3.address = doc.search("body > div:nth-child(9) > div.content-with-sidebar > div.wysiwyg > p:nth-child(20) > em").text
    #venue_3.info = doc.search("")
    
    venue_4 = self.new
    venue_4.name = doc.search("body > div:nth-child(9) > div.content-with-sidebar > div.wysiwyg > p:nth-child(25) > a > strong").text
    venue_4.address = doc.search("body > div:nth-child(9) > div.content-with-sidebar > div.wysiwyg > p:nth-child(25) > em").text
    #venue_4.info = doc.search("")
    
    venue_5 = self.new
    venue_5.name = doc.search("body > div:nth-child(9) > div.content-with-sidebar > div.wysiwyg > p:nth-child(31) > a > strong").text
    venue_5.address = doc.search("body > div:nth-child(9) > div.content-with-sidebar > div.wysiwyg > p:nth-child(31) > em").text
    #venue_5.info = doc.search("")
    
    @@all << venue_1
    @@all << venue_2
    @@all << venue_3
    @@all << venue_4
    @@all << venue_5
  end  


  
  
  def self.scrape_details
    @doc = Nokogiri::HTML(open("https://www.phillymag.com/things-to-do/live-music-concert-venues-philadelphia/"))
    @doc.search("div.wysiwyg").each do |venue_info|
      v = VenueTime::CLI::Showtime.new
      v.name = venue_info.search("a>strong:first").text.strip
      v.address = venue_info.search("p>em:first").text.strip
      v.info = venue_info.search("p[text]").text.strip
      
    end
  end
  
  
  
#  def self.scrape_venue
#    @doc = Nokogiri::HTML(open("https://www.phillymag.com/things-to-do/live-music-concert-venues-philadelphia/"))
#    @doc.search("div.wysiwyg").each do |v|
#      venue = VenueTime::CLI::Showtime.new
#      venue.name = v.search("a>strong").text.strip
#      venue.address = v.search("p>em").text.strip
#      venue.info = v.search("p[text]").text.strip
      
#      VenueTime::CLI::Showtime.add_venue(venue)
#    end
#  end
  
#  def self.new_scrape
#    page = Nokogiri::HTML(open("https://www.phillymag.com/things-to-do/live-music-concert-venues-philadelphia/"))
#    results = page.css
#    @name = page.css("a>strong").text
   # @address = page.css("p>em").text
  
  
#  def self.scrape_venue
#    @doc = Nokogiri::HTML(open("https://www.phillymag.com/things-to-do/live-music-concert-venues-philadelphia/"))
#    @scraping_block = @doc.search("div.wysiwyg")
#    @scraping_block.each do |s|
#      name = s.css("a>strong").text
#      address = s.css("p>em").text
#      info = s.css("p[text]"").text
#      venue = self.new(name, address)
#      @@all << venue
#    end
#  end
end