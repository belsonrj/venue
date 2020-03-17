class VenueTime::CLI::Showtime
  
  def self.scrape_web
    @shows = []
    doc = Nokogiri::HTML(open("https://concertfix.com/concerts/philadelphia-pa"))
    doc.search("div.article-content ul>li>a[href]").each do |s|
      @shows << s.text
    end
    @shows
  end
end