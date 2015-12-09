require 'mina/bundler'

namespace :rpush do
  set_default :rpush_command, -> { "cd #{deploy_to}/#{current_path} && #{bundle_prefix} rpush" }

  desc 'Start rpush'
  task start: :environment do
    queue %[echo '-----> Starting rpush']
    queue! "#{rpush_command} start -e #{rails_env}"
  end

  desc 'Stop rpush'
  task stop: :environment do
    queue %[echo '-----> Stopping rpush']
    queue! "#{rpush_command} stop -e #{rails_env}"
  end

  desc 'Restart rpush'
  task restart: :environment do
    queue %[echo '-----> Restarting rpush']
    queue! "#{rpush_command} stop -e #{rails_env}; #{rpush_command} start -e #{rails_env}"
  end

  desc 'Push pending notifications'
  task push: :environment do
    queue %[echo '-----> Pushing pending notifications']
    queue! "#{rpush_command} push -e #{rails_env}"
  end

  desc 'Check rpush status'
  task status: :environment do
    queue %[echo '-----> Checking rpush status']
    queue! "#{rpush_command} status -e #{rails_env}"
  end

end
