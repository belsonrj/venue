class VenueTime::CLI::Index
    attr_accessor :artist, :venue
  
  #@@all = []
  
  #def initialize
  #  @artist = artist
  #  @venue = venue
  #  @@all << self
  #end
  
  def show_index
    @artists = ["311, "Aerosmith", "AFI", "Action Bronson", "Adam Haworth Stevens", "Alabama Shakes", "Alice Cooper", "Allman Brothers, The", "Alt-J", "Andrew Bird", "Andrew WK", "Angels and Airwaves", "Arj Barker", "As Blood Runs Black", "As Tall As Lions", "Atlas Genius", "Audioslave", "Augustana", "Authority Zero", "Avenged Sevenfold", "Avett Brothers", "B-52s", "B.B.King", "Back Door Slam", "Bad Company", "Baio", "Barenaked Ladies", "Bassnektar", "Bastille", "Beastie Boys, The", "Beautiful Girls", "BECK", "Beirut", "Ben Folds", "Ben Harper", "Ben Schwartz", "Big D and the Kids Table", "Big Gigantic", "Bill Burr", "Black Joe Lewis", "Bleeding Through", "Blondie", "Blues Traveler", "Bob Dylan", "Bob Saget", "Bob Seger", "Bob Jovi", "Brand New", "Brian Posehn", "Broken Bells, "Bruce Springsteen", "Bryan Adams", "Cage the Elephant", "Cake", "Calvin Harris", "Cardboard City", "Charles Bradley", "Chase and Status", "Cheap Trick", "Chemical Brothers, The", "Cherie Currie", "Chiodos", "Chris D'elia", "Chromeo", "Citizen Cope", "City and Colour", "Clutch", "Coheed and Cambria", "Cold War Kids", "Coldplay", "Counting Crows", "Crowded House", "Cubic Zirconia", "Cults", "Cypress Hill", "Danny Brown", "Dashboard Confessional", "Dave Mason", "Dave Matthews Band", "David Byrne", "David Cassidy", "Death Cab for Cutie", "Deep Purple", "Def Leppard", "Destiny's Child", "Devil Wears Prada, The", "Devotchka", "Die Antwoord", "Dillinger Escape Plan, The", "Dinosaur Jr.", "Dirty Heads, The", "Dispatch", "Doobie Brothers, The", "Don Mclean", "Dr. Dog", "Dresden Dolls, The", "Dropkick Murphys, The", "ELO", "Edie Brickel", "Edward Sharpe and the Magnetic Zeros", "English Beat, The", "Electric Six", "Ellie Goulding", "Elton John", "Elvis Costello", "Erasure", "Everclear", "Fastball",]
    @venues = ["Festival Pier", "Tweeter Center"]
  end
end