class VenueTime::CLI::Scraper
  attr_accessor :name, :href

  @@all = []
  
  def initialize(name=nil, href=nil)
    @name = name
    @href = href
  end
  
  def self.all
    @@all
  end
  
  
  def self.scrape
    @doc = Nokogiri::HTML(open("https://concertfix.com/concerts/philadelphia-pa"))
    @scraping_block = @doc.search("div.article-content ul>li>a[href]")
  end
  
  
  def self.scrape_show
    @scraping_block.each do |s|
      name = s.css("a").text.strip
#      href = s.css("a").first["href"]                   #href = student_card.css("a").first["href"]
      show = self.new(name)
      @@all << show
    end
  end
  
#  def self.scrape_web
#    doc = Nokogiri::HTML(open("https://concertfix.com/concerts/philadelphia-pa"))
#    show = Showtime.new
#    show.name = doc.search("div.article-content ul>li>a[href]").each do |s|
#      Showtime.new << s.text
#    end
#  end
end