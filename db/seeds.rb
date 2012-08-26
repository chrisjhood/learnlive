# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
if Rails.env.development?

  Course.destroy_all
  Message.destroy_all
  Review.destroy_all
  Section.destroy_all
  Testimonial.destroy_all

  # create some users
  100.times do |i|
  first_names = ["Major", "The", "Jack", "Ben", "Abigail", "Ian", "Patrick", "Thomas", "John", "Riley", "Butcher", "Meg", "Allan", "William", "Big", "Train", "Ghost", "Cole", "Trading", "Conway", "Benmont", "Ray", "Louise", "Sonny", "Joe", "Rachel", "Richard", "Mike", "Chandler", "Amy", "Monica", "Cassie", "Frank", "Ben", "Phoebe", "Bobbie", "Joey", "Gina", "Pete", "Charlie", "Kate", "Charles", "Jack", "Alice", "Michael", "Nora", "Janice", "Alex", "Emily", "Susan", "Judy", "Mike", "Captain", "Ira", "General", "Franklin", "Bud", "Lieutenant", "Lieutenant", "Baron", "Colonel", "Admiral", "Admiral", "Meg", "Sarah", "Stephen", "Officer", "Lydia", "Cole", "Ethan", "Martin", "Iris", "El", "Bart", "Officer", "Colorado", "Pat", "Shasta", "Joe", "Nelse", "Mike", "Rio", "Nathan", "Carlos", "Napoleon", "Brick", "Chris", "Eager", "Ron", "Brian", "Frank", "Wes", "Veronica", "Ed", "Paul", "Champ", "Hot", "Garth", "Petite", "Network", "Man", "Middle", "Biker", "Waiter", "Middle", "Wealthy", "Nursing", "Viktor", "Amelia", "Frank", "Enrique", "Karl", "Gupta", "Clay", "Jim", "David", "Dean", "Senator", "Daniel", "Sister", "Kripa", "Yuri", "Vitaly", "Ava", "Jack", "Simeon", "Andre", "Anatoly", "Police", "Peter", "Samantha", "Officer", "Harlan", "Scorpio", "The", "Jennifer", "Chief", "Officer", "Captain", "Carol", "The", "Bank", "Horace", "Officer", "Ray", "Gus", "Judge", "Lou", "Butcher", "Suzanne", "Brooke", "Elle", "Chutney", "Vivienne", "Reena", "Serena", "Professor", "Grace", "Professor", "Stanford", "Warner", "Sid", "Ups", "Detective", "Dorky", "Enid", "Timothy", "Da", "Judge", "Arrogant", "Katherine", "Keith", "Robert", "Sergeant", "Kate", "Richard", "Father", "Paul", "Karen", "Carl"]
  last_names = ["Glenn", "Hulk", "Mcgee", "Gates", "Chase", "Howe", "Gates", "Gates", "Adams", "Poole", "Lady", "Greene", "Sanders", "Blake", "George", "Fireman", "Dog", "Wilson", "Post", "Twill", "Tench", "Vargo", "Vargo", "Valerio", "Rags", "Green", "Crosby", "Hannigan", "Bing", "Green", "Geller", "Geller", "Buffay", "Geller", "Buffay", "Morganstern", "Tribbiani", "Tribbiani", "Becker", "Wheeler", "Miller", "Bing", "Geller", "Knight", "Tribbiani", "Tyler", "Litman", "Garrett", "Waltham", "Bunch", "Geller", "Strank", "Severance", "Hamilton", "Kuribayashi", "Sousley", "Gerber", "Ito", "Fujita", "Nishi", "Adachi", "Ohsugi", "Ichimaru", "Altman", "Altman", "Altman", "Keeney", "Lynch", "Thornton", "Bishop", "Bishop", "Ferry", "Dorado", "Jason", "Rosen", "Ryan", "Wheeler", "Delaney", "Burdette", "Mcleod", "Kahane", "Lobo", "Burdette", "Robante", "Wilson", "Tamland", "Harken", "Cameraman", "Burgundy", "Fantana", "Vitchard", "Mantooth", "Corningstone", "Harken", "Hauser", "Kind", "Blonde", "Holliday", "Brunette", "Reporter", "In", "Class", "Guy", "At", "Class", "Family", "Room", "Navorski", "Warren", "Dixon", "Cruz", "Iverson", "Rajan", "Shaw", "Garrison", "Ferrie", "Andrews", "Long", "Sanchez", "Anna", "Shankar", "Orlov", "Orlov", "Fontaine", "Valentine", "Weisz", "Baptiste", "Orlov", "Inspector", "Swan", "Walker", "Phil", "Rook", "Killer", "Mayor", "Spencer", "Jannings", "John", "Briggs", "Mccoy", "Chief", "Robber", "King", "Red", "Parkins", "Wheeler", "Bannerman", "Janero", "Hicks", "Dayton", "Taylor", "Woods", "Windham", "Kensington", "Giuliani", "Mcguire", "Stromwell", "Rossiter", "Callahan", "Marks", "Huntington", "Post", "Guy", "Finchley", "David", "Wexler", "Mcginn", "Joyce", "Marina", "Aaron", "Thorn", "Jennings", "Thorn", "Neff", "Tanner", "Thorn", "Brennan", "Buher", "York", "Bugenhagen"]
  lorem = "Metus ac eros dictum aliquet nulla consectetur egestas. Who the fuck is Arthur Digby Sellers? It's all over, man! We call your fucking bluff! Placerat maecenas pulvinar nisl et nisl rhoncus at. Does this place look like I'm fucking married? Volutpat felis blandit in libero turpis, laoreet et. It increases the chances of conception. Molestie sed, volutpat et erat nulla ut orci. Hey, man, if my fucking ex-wife asked me to take care of her fucking dog while she and her boyfriend went to Honolulu, I'd tell her to go fuck herself. Quis neque consectetur tincidunt aliquam erat volutpat donec."

  User.create(  :first_name => first_names[rand(0..first_names.count)],
                :last_name => last_names[rand(0..last_names.count)],
                :bio => lorem,
                :password => "Password1",
                :password_confirmation => "Password1",
                :email => "user@user#{i}.com"
              )
  end

  # create some courses

  100.times do |i|
  lorem = "Metus ac eros dictum aliquet nulla consectetur egestas. Who the fuck is Arthur Digby Sellers? It's all over, man! We call your fucking bluff! Placerat maecenas pulvinar nisl et nisl rhoncus at. Does this place look like I'm fucking married? Volutpat felis blandit in libero turpis, laoreet et. It increases the chances of conception. Molestie sed, volutpat et erat nulla ut orci. Hey, man, if my fucking ex-wife asked me to take care of her fucking dog while she and her boyfriend went to Honolulu, I'd tell her to go fuck herself. Quis neque consectetur tincidunt aliquam erat volutpat donec."
  ipsum = "There's no fucking reason here's my point, Dude there's no fucking reason. Faucibus tristique nullam non accumsan justo nulla facilisi integer. I know my rights. Interdum elementum nulla, nec eleifend nisl euismod ac maecenas. Vitae eros velit, eu suscipit erat integer purus lacus, Fortunately I've been adhering to a pretty strict drug regimen to keep my mind, you know, limber. Pretium vel venenatis eu, volutpat non erat donec a. I did not watch my buddies die face down in the mud so that this fucking strumpet."

    Course.create(  :title => "Learn this now #{rand(0..9)}#{i}",
                    :description => lorem,
                    :user_id => rand(0..100),
                    :objective => lorem,
                    :prequisites => ipsum
                 )
  end

  # review the course
  100.times do
    response = ["fantastic, this was a great course", "I would never do this again", "I have not seen a better group of people learning together", "wonderful", "awful"]

    Review.create( :section_id => rand(0..100),
                   :comment => response[rand(0..4)],
                   :rating => rand(1..10)
                 )
  end

  # sections

  100.times do
    @OTSDK = OpenTok::OpenTokSDK.new '17321802', '3a90fda1362d50aed4b04f3f01456153d2e956be'
    Section.create(
                    :time => Time.now + rand(6..8700454),
                    :course_id => rand(0..100),
                    :session_id => @OTSDK.generateToken
                  )
  end

  # testimonials

  # 100.times do

  #   User.create( :user_id => rand(0..100),
  #                :comment => "There's no fucking reason here's my point, Dude there's no fucking reason. Faucibus tristique nullam non accumsan justo nulla facilisi integer. I know my rights. Interdum elementum nulla, nec eleifend nisl euismod ac maecenas. Vitae eros velit, eu suscipit erat integer purus lacus, Fortunately I've been adhering to a pretty strict drug regimen to keep my mind, you know, limber. Pretium vel venenatis eu, volutpat non erat donec a."
  #               )
  # end
end
