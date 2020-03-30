class VenueTime::CLI::Scraper
  attr_accessor :name, :address, :info

  @@all = []
  
  def initialize(name=nil, address=nil, info=nil)
    @name = name
    @address = address
    @info = info
  end
  
  def self.all
    @@all
  end
  
  
#  def self.scrape
#    @doc = Nokogiri::HTML(open("https://www.phillymag.com/things-to-do/live-music-concert-venues-philadelphia/"))
#    @scraping_block = @doc.search("div.wysiwyg")
#  end

  def self.get_page
    Nokogiri::HTML(open("https://www.phillymag.com/things-to-do/live-music-concert-venues-philadelphia/"))
  end
  
  def self.get_venue
    self.get_page.search("div.wysiwyg")
  end
    

  def self.make_venue
    self.get_venue.each do |v|
      venue = self.new
      venue.name = v.search("a>strong").text
      venue.address = v.search("p>em").text
      venue.info = v.css("p[text]").text
      @@all << venue
    end
  end
  
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