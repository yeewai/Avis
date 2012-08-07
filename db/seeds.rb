# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(:username => 'emi', :password => 'as')
#Resources
@comic = Project.create(:name => 'Resources', :description => 'Links and files of tutorials or just plain old good references', 
      :parent_id => 0,
      :status => Project::IN_PROGRESS, :variety => "Development")
@comic.categories.create(:name => "Writing", :description => "Tutorials for writing scripts and maybe even editing", 
    :status => Project::IN_PROGRESS, :variety => "Development")
@comic.categories.create(:name => "Character Designs", 
    :description => "Tutorials/references for character designs", 
    :status => Project::IN_PROGRESS, :variety => "Development")
@comic.categories.create(:name => "Penciling/Drawing", :description => "Tutorials/references for penciling and drawing.",
    :status => Project::IN_PROGRESS, :variety => "Development")
@comic.categories.create(:name => "Inks", :description => "Tutorials/references for inking and linearting", 
    :status => Project::IN_PROGRESS, :variety => "Development")
@comic.categories.create(:name => "Colours", :description => "Tutorials/references for colouring and painting", 
    :status => Project::IN_PROGRESS, :variety => "Development")
@comic.categories.create(:name => "Letters", :description => "Tutorials/references for lettering and typography", 
    :status => Project::IN_PROGRESS, :variety => "Development")
@comic.categories.create(:name => "Misc", 
  :description => "Tutorials/References that don't fit elsewhere", 
  :status => Project::IN_PROGRESS, :variety => "Development")
  
Project.create(:name => 'AVIS', :description => 'Anything pertaining to AVIS. Toss errors and suggestions into tasks. :)', 
      :parent_id => 0,
      :status => Project::IN_PROGRESS, :variety => "Web")
Project.create(:name => 'CP Main Site', :description => 'Anything pertaining to CP\'s main site.', 
      :parent_id => 0,
      :status => Project::IN_PROGRESS, :variety => "Web")
Project.create(:name => 'Admin', :description => 'Admin work!! =.=  Only admins can access this area, so we can talk bad about the other members all we want. ;) Except I haven\'t gotten the uploaded file hiding going yet....', 
      :parent_id => 0,
      :status => Project::IN_PROGRESS, :variety => "Admin")
