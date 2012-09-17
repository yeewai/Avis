class AddComicstoDb < ActiveRecord::Migration
  def up
    Project.create_comic "Domino Disaster", "DISASTER! The safety and security of the playground is being threatened by a deadly Domino Bully! Can our hero Eric find a way to vanquish his arch-rival Dominic and prove himself to be the superior Domineer? Or will he fall victim to the girlish charms and clumsy Shoujo antics of Lindsay the Love Interest?"
    Project.create_comic "Checkmate!", "Life on a chessboard is pretty black-and-white, but what happens when a Grey piece comes along?"
    Project.create_comic "Under the Big Top", "Have you ever heard the one about the 'gifted' teenagers who ran away to join the circus, travel the world, and make use of their power but ended up discovering a dark secret and now have to help save the 'gifted' world from being destroyed by a secret order out to end them all?"
    Project.create_comic "Trapped in a Novel", "Uninspired teenage writer Kendra gets more than she bargained for one day when she rages at her characters for being uncooperative - and they respond by sucking her into their world! Now Kendra is trapped inside her own poorly-created dystopia, Sablescape, dealing with obnoxious, two-dimensional protagonists, avoiding the clutches of a cliched evil corporation, and trying not to fall down plot holes. Her only hope of escape? To write the novel's ending."
    Project.create_comic "Gag Strips", ""
    Project.create_comic "One Shots", "A place for short stories (that usually only last one issue)"
  end

  def down
  end
end
