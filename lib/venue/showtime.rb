class VenueTime::CLI::Showtime
  attr_accessor :name, :venue
  
  @@all = []
  
  def initialize
    @name = name
    @venue = venue
    @@all << self
  end
  
  #def self.today
   # self.scrape_shows
  #end
  
  def self.scrape_shows
    @shows = []
    @shows << self.scrape_web
    
    @shows
  end
  
  def self.scrape_web
    doc = Nokogiri::HTML(open("https://concertfix.com/concerts/philadelphia-pa"))
    #binding.pry
    #show = self.new
    doc.search("div.article-content ul>li>a[href]").each do |s|
      @shows << s.text
    end
    #show.venue = "where"
    @shows
  end
end