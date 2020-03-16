class VenueTime::CLI::Showtime
  attr_accessor :name, :venue
  
  @@all = []
  
  def initialize
    @name = name
    @venue = venue
    @@all << self
  end
  
  def self.scrape_shows
    @shows = []
    @shows << self.scrape_web
    
    @shows
  end
  
  def self.scrape_web
    doc = Nokogiri::HTML(open("https://concertfix.com/concerts/philadelphia-pa"))
    doc.search("div.article-content ul>li>a[href]").each do |s|
      @shows << s.text
    end
    @shows
  end
end