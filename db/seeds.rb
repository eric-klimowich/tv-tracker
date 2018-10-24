# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Platform.destroy_all
Show.destroy_all
UserShow.destroy_all
ShowPlatform.destroy_all


User.create(first_name: "Eric", last_name: "Klimowich", username: "eklimowich", bio: "Stuff about me...", location_city: "Brooklyn", location_state: "NY")
User.create(first_name: "Scoti", last_name: "Dodson", username: "scodod", bio: "Stuff about Scoti...", location_city: "New York", location_state: "NY")
User.create(first_name: "Deepa", last_name: "Damodar", username: "askdeepa", bio: "Stuff about Deepa...", location_city: "Brooklyn", location_state: "NY")
User.create(first_name: "Keith", last_name: "Phillips", username: "wkrp", bio: "Stuff about Keith...", location_city: "Davenport", location_state: "FL")
User.create(first_name: "Diane", last_name: "Dever", username: "askdeepa", bio: "Stuff about Diane...", location_city: "Easton", location_state: "PA")


Platform.create(name: "Netflix" , subscription_cost: 9.99)
Platform.create(name: "Prime" , subscription_cost: 8.99)
Platform.create(name: "HBO" , subscription_cost: 14.99)
Platform.create(name: "Hulu" , subscription_cost: 8.99)


Show.create(title: "The Office", seasons: 9, status: false, lead_actor: "Steve Carrell", genre: "Comedy", description: "A mockumentary on a group of typical office workers, where the workday consists of ego clashes, inappropriate behavior, and tedium.", netflix: true, prime: false, hbo: false, hulu: true)

ShowPlatform.create(show_id: 1, platform_id: 1)
ShowPlatform.create(show_id: 1, platform_id: 4)

Show.create(title: "WestWorld", seasons: 2, status: true, lead_actor: "Evan Rachel Woods", genre: "sci-fi", description: "Set at the intersection of the near future and the reimagined past, explore a world in which every human appetite can be indulged without consequence.", netflix: false, prime: false, hbo: true, hulu: false)

ShowPlatform.create(show_id: 2, platform_id: 3)

Show.create(title: "How I Met Your Mother", seasons: 9, status: false, lead_actor: "Josh Radnor", genre: "Comedy", description: "A father recounts to his children, through a series of flashbacks, the journey he and his four best friends took leading up to him meeting their mother.", netflix: false, prime: false, hbo: false, hulu: true)

ShowPlatform.create(show_id: 3, platform_id: 4)

Show.create(title: "Seinfeld", seasons: 9, status: false, lead_actor: "Jerry Seinfeld", genre: "Comedy", description: "The continuing misadventures of neurotic New York City stand-up comedian Jerry Seinfeld and his equally neurotic New York City friends.", netflix: false, prime: false, hbo: false, hulu: true)

ShowPlatform.create(show_id: 4, platform_id: 4)

Show.create(title: "The Handmaid's Tale", seasons: 2, status: true, lead_actor: "Elisabeth Moss", genre: "Drama", description: "Set in a dystopian future, a woman is forced to live as a concubine under a fundamentalist theocratic dictatorship.", netflix: false, prime: false, hbo: false, hulu: true)

ShowPlatform.create(show_id: 5, platform_id: 4)

Show.create(title: "Orange is the New Black", seasons: 6, status: true, lead_actor: "Taylor Schilling", genre: "Drama", description: "Convicted of a decade old crime of transporting drug money to an ex-girlfriend, normally law-abiding Piper Chapman is sentenced to a year and a half behind bars to face the reality of how life-changing prison can really be.", netflix: true, prime: false, hbo: false, hulu: false)

ShowPlatform.create(show_id: 6, platform_id: 3)

Show.create(title: "Game of Thrones", seasons: 7, status: true, lead_actor: "Peter Dinklage", genre: "Adventure", description: "Nine noble families fight for control over the mythical lands of Westeros, while an ancient enemy returns after being dormant for thousands of years.", netflix: false, prime: false, hbo: true, hulu: false)

ShowPlatform.create(show_id: 7, platform_id: 3)

Show.create(title: "Fixer Upper", seasons: 5, status: false, lead_actor: "Joanna Gaines", genre: "Reality", description: "Chip and Joanna Gaines take on clients in the Waco Texas area, turning their fixer uppers into the homes of their dreams.", netflix: false, prime: false, hbo: false, hulu: true)

ShowPlatform.create(show_id: 8, platform_id: 4)

Show.create(title: "Making a Murderer", seasons: 2, status: true, lead_actor: "Steven Avery", genre: "Documentary", description: "Filmed over a 10-year period, Steven Avery, a DNA exoneree who, while in the midst of exposing corruption in local law enforcement, finds himself the prime suspect in a grisly new crime.", netflix: true, prime: false, hbo: false, hulu: false)

ShowPlatform.create(show_id: 9, platform_id: 1)

Show.create(title: "Ozark", seasons: 2, status: true, lead_actor: "Jason Bateman", genre: "Crime", description: "A financial adviser drags his family from Chicago to the Missouri Ozarks, where he must launder $500 million in five years to appease a drug boss.", netflix: true, prime: false, hbo: false, hulu: false)

ShowPlatform.create(show_id: 10, platform_id: 1)

Show.create(title: "The Sopranos", seasons: 6, status: false, lead_actor: "James Gandolfini", genre: "Crime", description: "New Jersey mob boss Tony Soprano deals with personal and professional issues in his home and business life that affect his mental state, leading him to seek professional psychiatric counseling.", netflix: false, prime: false, hbo: true, hulu: false)

ShowPlatform.create(show_id: 11, platform_id: 3)

Show.create(title: "Curb Your Enthusiasm", seasons: 10, status: true, lead_actor: "Larry David", genre: "Comedy", description: "The life and times of Larry David and the predicaments he gets himself into with his friends and complete strangers.", netflix: false, prime: true, hbo: true, hulu: false)

ShowPlatform.create(show_id: 12, platform_id: 2)
ShowPlatform.create(show_id: 12, platform_id: 3)

Show.create(title: "Entourage", seasons: 8, status: false, lead_actor: "Kevin Connolly", genre: "Comedy", description: "Film star Vince Chase navigates the vapid terrain of Los Angeles with a close circle of friends and his trusty agent.", netflix: false, prime: false, hbo: true, hulu: false)

ShowPlatform.create(show_id: 13, platform_id: 3)

Show.create(title: "The Wire", seasons: 5, status: false, lead_actor: "Dominic West", genre: "Crime", description: "Baltimore drug scene, seen through the eyes of drug dealers and law enforcement.", netflix: false, prime: false, hbo: true, hulu: false)

ShowPlatform.create(show_id: 14, platform_id: 3)

Show.create(title: "Daredevil", seasons: 3, status: true, lead_actor: "Charlie Cox", genre: "Action", description: "A blind lawyer by day, vigilante by night. Matt Murdock fights the crime of New York as Daredevil.", netflix: true, prime: false, hbo: false, hulu: false)

ShowPlatform.create(show_id: 15, platform_id: 1)

Show.create(title: "Downton Abbey", seasons: 6, status: false, lead_actor: "Hugh Bonneville", genre: "Drama", description: "A chronicle of the lives of the British aristocratic Crawley family and their servants in the early 20th Century.", netflix: false, prime: true, hbo: false, hulu: false)

ShowPlatform.create(show_id: 16, platform_id: 2)

Show.create(title: "Unbreakable Kimmy Schmidt", seasons: 3, status: true, lead_actor: "Ellie Kemper", genre: "Comedy", description: "A woman is rescued from a doomsday cult and starts life over again in New York City.", netflix: true, prime: false, hbo: false, hulu: false)

ShowPlatform.create(show_id: 17, platform_id: 1)

Show.create(title: "The IT Crowd", seasons: 5, status: false, lead_actor: "Chris O'Dowd", genre: "Comedy", description: "The comedic misadventures of Roy, Moss and their grifting supervisor Jen, a rag-tag team of IT support workers at a large corporation headed by a hotheaded yuppie.", netflix: true, prime: false, hbo: false, hulu: false)

ShowPlatform.create(show_id: 18, platform_id: 1)

Show.create(title: "Bob's Burgers", seasons: 9, status: true, lead_actor: "H. Jon Benjamin", genre: "Comedy", description: "Bob Belcher, along with his wife and 3 children, try to run their last hope of holding the family together, which is running Bob's dream restaurant.", netflix: false, prime: false, hbo: false, hulu: true)

ShowPlatform.create(show_id: 19, platform_id: 4)

Show.create(title: "Rick and Morty", seasons: 4, status: true, lead_actor: "Justin Roiland", genre: "Adventure", description: "An animated series that follows the exploits of a super scientist and his not-so-bright grandson.", netflix: false, prime: false, hbo: false, hulu: true)

ShowPlatform.create(show_id: 20, platform_id: 4)

Show.create(title: "The Man in the High Castle", seasons: 3, status: true, lead_actor: "Alexa Davalos", genre: "Drama", description: "In a dystopian America dominated by Nazi Germany and Imperial Japan, a young woman discovers a mysterious film that may hold the key to toppling the totalitarian regimes.", netflix: false, prime: true, hbo: false, hulu: false)

ShowPlatform.create(show_id: 21, platform_id: 2)

Show.create(title: "The Marvelous Mrs. Maisel", seasons: 2, status: true, lead_actor: "Rachel Brosnahan", genre: "Comedy", description: "A housewife in the 1950s decides to become a stand-up comic.", netflix: false, prime: true, hbo: false, hulu: false)

ShowPlatform.create(show_id: 22, platform_id: 2)

Show.create(title: "Transparent", seasons: 5, status: true, lead_actor: "Jeffrey Tambor", genre: "Comedy", description: "An L.A. family with serious boundary issues have their past and future unravel when a dramatic admission causes everyone's secrets to spill out.", netflix: false, prime: true, hbo: false, hulu: false)

ShowPlatform.create(show_id: 23, platform_id: 2)

Show.create(title: "The Tick", seasons: 1, status: true, lead_actor: "Peter Serafinowicz", genre: "Action", description: "In a world where superheroes have been real for decades, an accountant with no superpowers comes to realize his city is owned by a super villain. As he struggles to uncover this conspiracy, he falls in league with a strange blue superhero.", netflix: false, prime: true, hbo: false, hulu: false)

ShowPlatform.create(show_id: 24, platform_id: 2)

Show.create(title: "Veep", seasons: 6, status: true, lead_actor: "Julia Louis-Dreyfus", genre: "Comedy", description: "Former Senator Selina Meyer finds that being Vice President of the United States is nothing like she hoped and everything that everyone ever warned her about.", netflix: false, prime: false, hbo: true, hulu: false)

ShowPlatform.create(show_id: 25, platform_id: 3)

Show.create(title: "The Americans", seasons: 6, status: false, lead_actor: "Keri Russell", genre: "Drama", description: "At the height of the Cold War two Russian agents pose as your average American couple, complete with family.", netflix: false, prime: true, hbo: false, hulu: false)

ShowPlatform.create(show_id: 26, platform_id: 2)

Show.create(title: "Schitt's Creek", seasons: 4, status: true, lead_actor: "Eugene Levy", genre: "Comedy", description: "When rich video-store magnate Johnny Rose and his family suddenly find themselves broke, they are forced to leave their pampered lives to regroup in Schitt's Creek.", netflix: true, prime: false, hbo: false, hulu: false)

ShowPlatform.create(show_id: 27, platform_id: 1)

Show.create(title: "Breaking Bad", seasons: 5, status: false, lead_actor: "Bryan Cranston", genre: "Drama", description: "A high school chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine in order to secure his family's future.", netflix: true, prime: false, hbo: false, hulu: false)

ShowPlatform.create(show_id: 28, platform_id: 1)

Show.create(title: "Arrested Development", seasons: 5, status: true, lead_actor: "Jason Bateman", genre: "Comedy", description: "Level-headed son Michael Bluth takes over family affairs after his father is imprisoned. But the rest of his spoiled, dysfunctional family are making his job unbearable.", netflix: true, prime: false, hbo: false, hulu: false)

ShowPlatform.create(show_id: 29, platform_id: 1)

Show.create(title: "Anthony Bourdain: Parts Unknown", seasons: 12, status: true, lead_actor: "Anthony Bourdain", genre: "Documentary", description: "Anthony Bourdain visits countries, delving into their political issues as well as indigenous food and culture.", netflix: true, prime: false, hbo: false, hulu: false)

ShowPlatform.create(show_id: 30, platform_id: 1)


UserShow.create(user_id: 1, show_id: 1, status: "Watched", season: 9, episode: 22)
UserShow.create(user_id: 1, show_id: 2, status: "Not Started", season: 1, episode: 1)
UserShow.create(user_id: 1, show_id: 3, status: "Watched", season: 9, episode: 24)
UserShow.create(user_id: 1, show_id: 4, status: "Watched", season: 9, episode: 21)
UserShow.create(user_id: 1, show_id: 5, status: "Watching", season: 1, episode: 2)
UserShow.create(user_id: 1, show_id: 6, status: "Watching", season: 1, episode: 1)
UserShow.create(user_id: 1, show_id: 7, status: "Watching", season: 7, episode: 10)
UserShow.create(user_id: 1, show_id: 8, status: "Watching", season: 3, episode: 9)
UserShow.create(user_id: 1, show_id: 9, status: "Not Started", season: 1, episode: 1)
UserShow.create(user_id: 1, show_id: 10, status: "Not Started", season: 1, episode: 1)
UserShow.create(user_id: 1, show_id: 11, status: "Not Started", season: 1, episode: 1)
UserShow.create(user_id: 1, show_id: 12, status: "Watching", season: 1, episode: 2)
UserShow.create(user_id: 1, show_id: 13, status: "Not Started", season: 1, episode: 1)
UserShow.create(user_id: 1, show_id: 14, status: "Not Started", season: 1, episode: 1)
UserShow.create(user_id: 1, show_id: 15, status: "Watching", season: 3, episode: 1)
UserShow.create(user_id: 1, show_id: 16, status: "Not Started", season: 1, episode: 1)
UserShow.create(user_id: 1, show_id: 17, status: "Not Started", season: 1, episode: 1)
UserShow.create(user_id: 1, show_id: 18, status: "Watching", season: 2, episode: 3)
UserShow.create(user_id: 1, show_id: 19, status: "Not Sratred", season: 1, episode: 1)
UserShow.create(user_id: 1, show_id: 20, status: "Not Sratred", season: 1, episode: 1)
UserShow.create(user_id: 1, show_id: 21, status: "Not Sratred", season: 1, episode: 1)
UserShow.create(user_id: 1, show_id: 22, status: "Not Sratred", season: 1, episode: 1)
UserShow.create(user_id: 1, show_id: 23, status: "Not Sratred", season: 1, episode: 1)
UserShow.create(user_id: 1, show_id: 24, status: "Not Sratred", season: 1, episode: 1)
UserShow.create(user_id: 1, show_id: 25, status: "Watching", season: 6, episode: 10)
UserShow.create(user_id: 1, show_id: 26, status: "Not Started", season: 1, episode: 1)
UserShow.create(user_id: 1, show_id: 27, status: "Not Started", season: 1, episode: 1)
UserShow.create(user_id: 1, show_id: 28, status: "Watching", season: 1, episode: 3)
UserShow.create(user_id: 1, show_id: 29, status: "Watching", season: 2, episode: 7)
UserShow.create(user_id: 1, show_id: 30, status: "Watching", season: 2, episode: 7)
UserShow.create(user_id: 2, show_id: 2, status: "Watching", season: 2, episode: 1)
UserShow.create(user_id: 2, show_id: 10, status: "Not Started", season: 1, episode: 1)
UserShow.create(user_id: 3, show_id: 1, status: "Watched", season: 9, episode: 22)
UserShow.create(user_id: 3, show_id: 2, status: "Not Started", season: 1, episode: 1)
UserShow.create(user_id: 3, show_id: 3, status: "Watched", season: 9, episode: 24)
UserShow.create(user_id: 3, show_id: 4, status: "Watched", season: 9, episode: 21)
UserShow.create(user_id: 3, show_id: 5, status: "Watched", season: 2, episode: 10)
UserShow.create(user_id: 3, show_id: 6, status: "Watched", season: 6, episode: 10)
UserShow.create(user_id: 3, show_id: 7, status: "Watched", season: 7, episode: 10)
UserShow.create(user_id: 3, show_id: 8, status: "Watched", season: 5, episode: 10)
UserShow.create(user_id: 3, show_id: 9, status: "Watched", season: 2, episode: 10)
UserShow.create(user_id: 3, show_id: 10, status: "Watching", season: 1, episode: 1)
UserShow.create(user_id: 3, show_id: 11, status: "Not Started", season: 1, episode: 1)
UserShow.create(user_id: 3, show_id: 12, status: "Watched", season: 10, episode: 10)
UserShow.create(user_id: 3, show_id: 13, status: "Not Started", season: 1, episode: 1)
UserShow.create(user_id: 3, show_id: 14, status: "Watching", season: 2, episode: 1)
UserShow.create(user_id: 3, show_id: 15, status: "Watching", season: 2, episode: 13)
UserShow.create(user_id: 3, show_id: 16, status: "Watching", season: 2, episode: 15)
UserShow.create(user_id: 3, show_id: 17, status: "Not Started", season: 1, episode: 1)
UserShow.create(user_id: 3, show_id: 18, status: "Not Started", season: 1, episode: 1)
UserShow.create(user_id: 3, show_id: 19, status: "Not Started", season: 1, episode: 1)
UserShow.create(user_id: 3, show_id: 20, status: "Not Started", season: 1, episode: 1)
UserShow.create(user_id: 3, show_id: 21, status: "Not Started", season: 1, episode: 1)
UserShow.create(user_id: 3, show_id: 22, status: "Watched", season: 2, episode: 10)
UserShow.create(user_id: 3, show_id: 23, status: "Watching", season: 1, episode: 5)
UserShow.create(user_id: 3, show_id: 24, status: "Not Started", season: 1, episode: 5)
UserShow.create(user_id: 3, show_id: 25, status: "Watched", season: 6, episode: 10)
UserShow.create(user_id: 3, show_id: 26, status: "Not Started", season: 1, episode: 1)
UserShow.create(user_id: 3, show_id: 27, status: "Watching", season: 4, episode: 1)
UserShow.create(user_id: 3, show_id: 28, status: "Watched", season: 5, episode: 10)
UserShow.create(user_id: 3, show_id: 29, status: "Watching", season: 5, episode: 1)
UserShow.create(user_id: 3, show_id: 30, status: "Not Started", season: 1, episode: 1)
