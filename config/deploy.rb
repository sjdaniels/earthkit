# config valid only for current version of Capistrano
# lock '3.4.0'

set :application, 'earthkit'
set :repo_url, 'git@github.com:sjdaniels/earthkit.git'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, '/home/deploy/earthkit'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# set :linked_files, fetch(:linked_files, []).push('.env')

# Default value for linked_dirs is []
# set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')
set :linked_dirs, fetch(:linked_dirs, []).push('logs')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5
set :reinit_pw, ->{ fetch(:reinit_pw) }

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app) do |host|
      # Your restart mechanism here, for example:
      # execute :touch, release_path.join('tmp/restart.txt')
      execute "cp #{release_path}/config/box/server.json /home/deploy/server.json"
      execute "rsync --stats -rlpgoDc --delete #{release_path}/ #{deploy_to}/production/"
      # reinit
      execute "curl http://localhost:8111/?fwreinit=#{fetch(:reinit_pw)} -s -o /dev/null -m 30"
    end
  end

  after :publishing, :restart

  desc 'Box Install'
  task :box_install do
    on roles(:app) do
		  execute "cd '#{release_path}'; BOX_JAVA_ARGS='-Xms128m -Xmx128m'; box install"
  	end
  end

end

after "deploy:updated","deploy:box_install"
# after "deploy:finishing","deploy:after_deploy"