class AddUserstoDb < ActiveRecord::Migration
  def up
    
    User.create(:username => 'Emihaumut', :password => 'bread', :role => 3, :email => 'emihaumut@gmail.com', :gmt => '-6', :name => 'Emihaumut, Yee, Emily.', :birthday => '1991-08-19', :zodiac => 'Ram', :residence => 'Chicago, IL, America.', :colour => 'Orange.', :position => 'Inker, Colourist, Web Master, Head Secretary, Overall Awesome.', :website => 'emihaumut.com', :bio => 'I like cake. And Chocolate. I have a more lengthy bio on my site.', :quote => '"Oh hello Nocturne. I hope I\'m not interrupting anything important. Why, I am rather hungry; do you have anything to eat? Oh I\'m not doing anything important like lecturing the creator of our world or anything. Really, you can just barge in uninvited, and please help yourself to a can of myfootinyourass."', :contact => '\ (o.o) /')
    User.create(:username => 'enchantedsleeper', :password => 'bread', :role => 3, :email => 'enchantedsleeper@gmail.com', :name => 'enchantedsleeper', :birthday => '1991-03-21', :zodiac => 'Aries / Ram.', :residence => 'Jolly Old England ', :colour => 'Purple all the way!! I also like silver and turquoise. ', :position => 'Writer and Head of Studio.', :website => 'http://www.fanfiction.net/u/710088/ ', :bio => 'Well, let\'s see. I\'m a writer for the studio; writing is one of my favourite things, and I plan to make a career of it when I\'m older. My main genre is fantasy, but I like to try out lots of different genres and writing forms. Writing scripts is lots of fun, especially for a humour project =D I stumbled upon Catalytic whilst browsing the Comic Creators subforum on Gaia because I was thinking of making my own webcomic at the time. I\'m not sure exactly why I applied, considering how little I knew about comics back then, but it turned out to be one of my best random decisions. xD ', :quote => '"If everyone is different, then how can anyone be normal?"')
    User.create(:username => 'GrimBen', :password => 'bread', :role => 2, :email => 'ben.mercutio@gmail.com', :gmt => '-5', :name => 'Grim', :birthday => '0000-00-00', :residence => 'america ', :colour => 'Orange.', :position => 'Writer, humorist', :bio => 'senior writer of gag strips ', :quote => '"Don\'t take the tug if you aren\'t strong enough."', :theme => '1')
    User.create(:username => 'Z o k u R u m b a', :password => 'bread', :role => 2, :email => 'vksimmons123@yahoo.com', :gmt => '-6', :name => 'Vanessa', :birthday => '1991-05-09', :zodiac => 'Taurus', :colour => 'Black', :position => 'Script Writer, Comic Artist, Cover Artist', :bio => 'Meh', :quote => 'None.', :contact => 'Z o k u R u m b a')
    User.create(:username => 'TheNErD', :password => 'bread', :role => 2, :email => 'shakespearian.rhapsody@gmail.com', :gmt => '-6', :name => 'Kari', :birthday => '0000-00-00', :zodiac => 'Leo', :residence => 'New Mexico', :colour => 'Purple', :position => 'Writer', :website => 'gaiaonline.com', :bio => 'I have been writing in my spare time for about elven years. My sophomore year of high school one of my poems called "Man of Wind and Lady Fire" was published (somewhere... If you happen to have read it or know what book it is in, let me know!) I just joined the studio, but am very excited to be writing, and I hope everyone likes my stuff.', :quote => '"You are deep in the ages now, you whom the world could not break nor the years tame."', :contact => 'TheNErD')
    User.create(:username => 'Roufette', :password => 'bread', :role => 2, :email => 'tismeggiedoll@aim.com', :gmt => '-6', :name => 'Roufette', :birthday => '0000-00-00', :zodiac => ' Gemini / Sheep(Goat) ', :residence => 'New York', :colour => 'Green ', :position => 'Editor ', :bio => 'I\'ve been editing and writing stories and comics since I was in middle school. It\'s something I\'ve always been passionate about. Due to my lack of artistic talent, I found my calling in editing scripts. I love writing, reading, lounging, etc. I am in my final year of school, working towards my biochemistry major. I love babies, the color green and fatty food. I also love to bake/cook and plan on starting a food blog this coming semester with a girlfriend of mine. I will add the link when it\'s up (hopefully y\'all will read it! :]) Oh, and I\'m a huge hockey fan. HUGE.', :quote => '"You miss 100% of the shots you never take" -Wayne Gretzky.')
    User.create(:username => 'The Rejected Punk', :password => 'bread', :role => 2, :email => 'naiyajohnson@gmail.com', :gmt => '-6', :name => 'Naiya', :birthday => '0000-00-00', :zodiac => 'Sagitarius', :residence => 'California', :colour => 'Green, Purple, Black', :position => 'Writer', :website => 'N/A', :quote => 'I am what time and circumstance have made me.', :contact => 'Gaia PM')
    User.create(:username => 'Terei', :password => 'bread', :role => 2, :email => 'xX_Terei_Xx@hotmail.com', :gmt => '-6', :birthday => '0000-00-00', :zodiac => 'Sagittarius', :colour => 'Black/Purple', :position => 'Gag Strip Artist')
    User.create(:username => 'Kenny', :password => 'bread', :role => 2, :gmt => '-6', :birthday => '0000-00-00')
    User.create(:username => 'chainsawmascara', :password => 'bread', :role => 2, :email => 'chainsawmascara@hotmail.com', :gmt => '-5', :name => 'L', :birthday => '0000-00-00', :zodiac => 'Multiple conjunct Virgo (sun, rising, venus, jupiter), Libra moon, Gemini Mars, Leo and Chiron in Mercury', :residence => 'Rhode Island', :colour => 'Green in general, red to wear', :position => 'Character Design', :website => 'http://chainsawmascarart.tumblr.com', :bio => 'A queer, vegan with an arsenal of disabilities and too many creative ideas to juggle all by herself. ', :quote => 'I put my heart and my soul into my work, and have lost my mind in the process. Vincent van Gogh I feel there is nothing more truly artistic than to love people. Vincent van Gogh')
    User.create(:username => 'Jefferson', :password => 'bread', :role => 2, :email => 'JDApgar@gmail.com', :gmt => '-6', :name => 'Jefferson', :birthday => '0000-00-00', :zodiac => 'Leo')
    User.create(:username => 'YdAo', :password => 'bread', :role => 2, :email => 'ydao@ydaofficial.net', :gmt => '1', :name => 'YdAo', :birthday => '0000-00-00', :residence => 'Somewhere on Earth', :position => 'Letterer', :website => 'http://www.ydaofficial.net', :bio => 'Comic book artist, letterer, illustrator and creator of The Pariah\'s Urn comic.')
    User.create(:username => 'BlueRosiC2', :password => 'bread', :role => 2, :email => 'princess.nana13@hotmail.com', :gmt => '-6', :birthday => '0000-00-00')
    User.create(:username => 'Whitemercury', :password => 'bread', :role => 2, :gmt => '-6', :birthday => '0000-00-00')
    User.create(:username => 'Jiigoku', :password => 'bread', :role => 2, :birthday => '0000-00-00')
    User.create(:username => 'mizueyes777', :password => 'bread', :role => 2, :email => 'mizueyes777@yahoo.com', :gmt => '-6', :name => 'Jessica', :birthday => '0000-00-00', :zodiac => 'Libra', :residence => 'Ohio', :colour => 'Blue', :website => 'http://mizueyes777.deviantart.com/', :quote => 'The most important kind of freedom is to be what you really are. You trade in your reality for a role. You give up your ability to feel, and in exchange, put on a mask. Jim Morrison ')
    User.create(:username => 'Locusteater', :password => 'bread', :role => 2, :gmt => '-6', :birthday => '0000-00-00')
  end

  def down
  end
end
