set :application, "ror-demo"

set :scm, :git
set :repository,  "git://github.com/anahoret/demo.git"
set :deploy_via, :copy
set :copy_strategy, :export

set :deploy_to, "/var/www/rails/#{application}"
set :use_sudo, false

role :app, "anahoret.com"
role :web, "anahoret.com"
role :db,  "anahoret.com", :primary => true

namespace :deploy do
  task :restart do
    run "touch #{current_path}/tmp/restart.txt"
  end
end
