class VenueTime::CLI::Showtime
  attr_accessor :name 
  
  @@all = []
  
  def initialize
    @name = name
  end
  
  def self.all
    @@all
  end
  
  
  def self.scrape_web
    doc = Nokogiri::HTML(open("https://concertfix.com/concerts/philadelphia-pa"))
    show = self.new
    show.name = doc.search("div.article-content ul>li>a[href]").each do |s|
      @@all << s.text
    end
  end
end