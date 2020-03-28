  class VenueTime::CLI::Scraper
#  attr_accessor :name 
#  
#  @@all = []
#  
#  def initialize
#    @name = name
#    @@all << self
#  end
  
  def self.scrape_web
    doc = Nokogiri::HTML(open("https://concertfix.com/concerts/philadelphia-pa"))
    show = Showtime.new
    show.name = doc.search("div.article-content ul>li>a[href]").each do |s|
      Showtime.new << s.text
    end
  end
end