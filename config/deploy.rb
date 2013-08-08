$LOAD_PATH.unshift File.join(File.dirname(__FILE__), 'deploy')
require "bundler/capistrano"

require "capistrano_database_yml"

#load 'lib/deploy/seed' #include if you need to load seed data with cap deploy:seed 

server "hashdash.izk.me", :app, :web, :db, :primary => true
set :user, "isaac" # The server's user for deploys
# set :scm_passphrase, ENV['server_pass'] # The deploy user's password

set :application, "hashdash.izk.me"

set :use_sudo, false

set :default_environment, { 
  'PATH' => "$HOME/.rvm/gems/ruby-1.9.3-p448@rails/bin:$HOME/.rvm/gems/ruby-1.9.3-p448@global/bin:$HOME/.rvm/bin:$PATH",
  'RUBY_VERSION' => 'ruby 1.9.3-p448',
  'GEM_HOME' => '/home/isaac/.rvm/gems/ruby-1.9.3-p448@rails3',
  'GEM_PATH' => "/home/isaac/.rvm/gems/ruby-1.9.3-p448@rails3:/home/isaac/.rvm/gems/ruby-1.9.3-p448@global" 
}
set :deploy_to, "/var/www/production/hashdash.izk.me"
set :deploy_via, :remote_cache

after "deploy", "deploy:cleanup" # keep only the last 5 releases

set :scm, "git"
set :scm_verbose, true
set :repository, "git@github.com:BrainScraps/trivial_game.git"
set :branch, "production"

default_run_options[:pty] = true # Must be set for the password prompt from git to work
ssh_options[:forward_agent] = true

namespace :deploy do
# If you need to load seed data. Syntax: cap deploy:seed
  desc "Reload the database with seed data"
  task :seed do
    run "cd #{current_path}; bundle exec rake db:seed RAILS_ENV=#{rails_env}"
  end

  task :start do ; end
  task :stop do ; end

  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}" #restarts nginx
  end
end