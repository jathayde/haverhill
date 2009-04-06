set :application, "haverhill"
set :repository,  "git://github.com/boboroshi/haverhill.git"

set :deploy_to, "/var/www/#{application}"

set :scm, :git

role :app, "haverhill.infoether.com"
role :web, "haverhill.infoether.com"
role :db,  "haverhill.infoether.com", :primary => true

set :use_sudo, false
set :group, "infoether"

task :move_in_database_yml, :roles => :app do
  run "cp #{deploy_to}/shared/system/database.yml #{current_path}/config/"
end

namespace :deploy do
  desc "Restarting mod_rails with restart.txt"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_path}/tmp/restart.txt"
  end

  [:start, :stop].each do |t|
    desc "#{t} task is a no-op with mod_rails"
    task t, :roles => :app do ; end
  end
end

after "deploy:symlink", "move_in_database_yml"
after "deploy", "deploy:migrate"
after "deploy", "deploy:cleanup"