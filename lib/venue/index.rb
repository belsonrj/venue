class VenueTime::CLI::Index
    attr_accessor :artist, :venue
  
  #@@all = []
  
  #def initialize
  #  @artist = artist
  #  @venue = venue
  #  @@all << self
  #end
  
  def show_index
    @artists = ["311, "Aerosmith", "AFI", "Action Bronson", "Adam Haworth Stevens", "Alabama Shakes", "Alice Cooper", "Allman Brothers, The", "Alt-J", "Andrew Bird", "Andrew WK", "Angels and Airwaves", "Arj Barker", "As Blood Runs Black", "As Tall As Lions", "Atlas Genius", "Audioslave", "Augustana", "Authority Zero", "Avenged Sevenfold", "Avett Brothers", "B-52s", "B.B.King", "Back Door Slam", "Bad Company", "Baio", "Barenaked Ladies", "Bassnektar", "Bastille", "Beastie Boys, The", "Beautiful Girls", "BECK", "Beirut", "Ben Folds", "Ben Harper", "Ben Schwartz", "Big D and the Kids Table", "Big Gigantic", "Bill Burr", "Black Joe Lewis", "Bleeding Through", "Blondie", "Blues Traveler", "Bob Dylan", "Bob Saget", "Bob Seger", "Bob Jovi", "Brand New", "Brian Posehn", "Broken Bells, "Bruce Springsteen", "Bryan Adams", "Cage the Elephant", "Cake", "Calvin Harris", "Cardboard City", "Charles Bradley", "Chase and Status", "Cheap Trick", "Chemical Brothers, The", "Cherie Currie", "Chiodos", "Chris D'elia", "Chromeo", "Citizen Cope", "City and Colour", "Clutch", "Coheed and Cambria", "Cold War Kids", "Coldplay", "Counting Crows", "Crowded House", "Cubic Zirconia", "Cults", "Cypress Hill", "Danny Brown", "Dashboard Confessional", "Dave Mason", "Dave Matthews Band", "David Byrne", "David Cassidy", "Death Cab for Cutie", "Deep Purple", "Def Leppard", "Destiny's Child", "Devil Wears Prada, The", "Devotchka", "Die Antwoord", "Dillinger Escape Plan, The", "Dinosaur Jr.", "Dirty Heads, The", "Dispatch", "Doobie Brothers, The", "Don Mclean", "Dr. Dog", "Dresden Dolls, The", "Dropkick Murphys, The", "ELO", "Edie Brickel", "Edward Sharpe and the Magnetic Zeros", "English Beat, The", "Electric Six", "Ellie Goulding", "Elton John", "Elvis Costello", "Erasure", "Everclear", "Fastball", "Felice Brothers, The", "Field Mouse", "Fitz and the Tantrums", "Flight of the Conchords", "Foo Fighters, The", "Foster the People", "Foxygen", "Fred Armisen", "From First to Last", "Gabriella Cohen", "Gallagher", "Chicago", "Gin Blossoms", "glassJAw", "Glen Hansard", "Godsmack", "Gogol Bordello", "Goo Goo Dolls, The", "Gordon Lightfoot", "Gost", "Grouplove", "Guns and Roses", "GWAR", "Gym Class Heroes", "Hall and Oates", "Hannibal Buress", "Hawthorne Heights", "Head Automatica", "Heart", "High on Fire", "High and Mighty Brass", "Hoobastank", "Hootie and the Blowfish", "HORSE the Band", "Hot Hot Heat", "Iggy Pop w/ Josh Homme", "Incubus", "Iron and Wine", "Jack White", "James", "Janelle Monae", "Janes Addiction", "Jason Bonham", "Jay-Z", "Jeff Beck", "Jeff Ross", "Jeffrey Gaines", "Jim James", "Joan Baez", "Joan Jett", "Joan Osborne", "John Fogerty", "Jon Anderson", "Jon Batiste", "Judas Priest", "Judy Collins", "Kaki KIng", "Kansas", "Kanye West", "Ke$ha", "Keith Urban", "Kendrick Lamar", "Kevin Devine", "Kid Cudi", "King Khan and the Shrines", "Kurt Vile", "Laura Stevenson", "Lauryn Hill", "Linkin Park", "Lionel Ritchie", "Liz Phair", "LIVE", "Local H", "Lonely Island, The", "Loudon Wainwright III", "Louis CK", "Low Anthem", "MGMT", "Maps and Atlases", "Marcy Playground", "Marilyn Manson", "Mastodon", "Matchbox 20", "Matisyahu", "Matt Pond", "Matt and Kim", "Mayor Hawthorne", "Meat Puppets, The", "Megadeth", "Melissa Etheridge", "Meshuggah", "Metric", "mewithoutyou", "Michael McDonald", "Mighty Mighty Bosstones, The", "Minus the Bear", "Modern English", "Modest Mouse", "Motion City Soundtrack", "Morrissey", "Murder by Death", "Mystikal w/ Craig Robinson", "Naughty by Nature", "NOFX", "Nada Surf", "Neil Young", "Neutral Milk Hotel", "No Doubt", "OFWGKTA (Odd Future)", "OK GO", "Omar Souleyman", "One Eskimo", "Ozzy Osbourne", "Paramore", "Parkway Drive", "Passion Pitt", "Pat Benatar", "Patti Labelle", "Patti Smith", "Paul McCartney", "Paul Simon", "Paul Weller", "Pepper", "Peter, Bjorn, and John", "Peter Frampton", "Peter Gabriel", "Phil Collins", "Phil Roy", "Psychedelic Furs, The", "Primus", "RANCID", "Radiohead", "Red Hot Chili Peppers", "Reggie Watts", "REO Speedwagon", "Reptar", "Ringo Starr", "Rob Thomas", "Robbers", "Robby Krieger", "Robert Plant", "Roger Daltrey", "Rufus Wainwright", "Saosin", "Sarah Silverman", "Sasheer Zamata", "Seasick Steve", "Senses Fail", "Serj Tankien", "Shawn Mullins", "Skrillex", "Slash w/Miles Kennedy", "Slayer", "Smashing Pumpkins, The", "Social Distortion", "Steely Dan", "Steve Miller", "Stevie Nicks", "Stevie Wonder", "Sting", "Story of the Year", "Streetlight Manifesto", "STYX", "Squeeze", "Sublime w/Rome", "Suicide Silence", "System of a Down", "Taking Back Sunday", "Ted Nugent", "Tegan and Sara", "Tenacious D", "Black Keys, The", "Cure, The", "Decemberists, The", "Flaming Lips, The", "Front Bottoms, The", "Hooters, The", "Killers, The", "Mumlers, The", "National, The", "Offspring, The", "Pretenders, The", "Rolling Stones, The", "Roots, The", "Shins, The", "Spin Doctors, The", "Streets, The", "Strokes, The", "Swell Season, The", "Tallest Man on Earth, The", "Used, The", "Wallflowers, The", "They Might Be Giants", "Third Eye Blind", "THRICE", "Thursday", "Tidal Arms", "Thomas Middleditch", "TLC", "Todd Rundgren", "Tom Pretty", "TOTO", "Tracy Chapman", "Tracy Morgan", "TRAIN", "Trampled by Turtles", "Two Gallants", "United Nations", "Vampire Weekend", "Walk the Moon", "Washed Out", "Weezer", "White Rabbits", "Will Smith", "William Elliot Whitmore", "Wiz Khalifa", "Wu Tang Clan", "Yak Ballz", "Yeah Yeah Yeahs" "Young the Giant", "ZZ Top"]
    @venues = ["Festival Pier", "Tweeter Center", "The TLA", "Underground Arts", "Electric Factory", "Union Transfer", "Mann Center", "Wells Fargo", "Spectrum", "Bonnaroo", "Firefly Festival", "Riot Fest", "Fillmore, The", "Kimmel Center, The", "Boot and Saddle", "World Cafe Live", "Tower Theatre, The", "Milkboy", "The Fire", "Johnny Brenda's", "Ardmore Music Hall, The", "The Met", "Voltage Lounge", "The Foundry", "Merriam Theatre", "Black Cat", "Starland Ballroom", "Keswick Theatre", "The Barbary", "Scottish Rite Auditorium", "Hershey Theatre", "Hollywood Bowl, The", "Electric Ballroom", "Bowery Ballroom", "Terminal 5", "Mercury Lounge", "Music Hall of Williamsburg", "Radio City Music Hall", "Webster Hall", "Sony Hall", "Stone Pony", "Asbury Park Convention Hall"]
  end
end