# snowybir
# Swo21kin*

# RAILS_ROOT/config/deploy.rb
# server config
set :user, 'snowybir'
set :domain, "snowybird.com"
set :project, 'avis' #project name in repository, pulls from trunk by default
set :application, "AVIS"
set :applicationdir, "/home1/#{user}/rails_app/#{application}"

# version control config
# NOTE:  hostmonster supports http port 80,   
#   svn port 3690 doesnt work,
#   and svn+ssh is not tested...
set :scm, :git
set :repository,  "git@github.com:yeewai/Avis.git"
set :scm_passphrase, "Swo21kin*"  # The deploy user's password
set :branch, "master"


# deployment config
set :deploy_to, applicationdir
set :deploy_via, :remote_cache

# production database config
set :db_type, "mysql"

# roles (servers)
role :app, domain
role :web, domain
role :db,  domain, :primary => true

#Gave up around here. =.=

# additional config options
default_run_options[:pty] = true
ssh_options[:keys] = %w(/Path/to/id_rsa)            # If you are using ssh_keys
set :chmod755, %w(app config db lib public vendor script tmp public/dispatch.cgi public/dispatch.fcgi public/dispatch.rb)
set :use_sudo, false