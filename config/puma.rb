if ENV['RAILS_ENV'] == 'production'
  puts "puma run in production mode"
  app_root = '/home/ruby/xblog'
  pidfile "#{app_root}/tmp/pids/puma.pid"
  state_path "#{app_root}/tmp/pids/puma.state"
  # bind "unix://#{app_root}/tmp/sockets/puma.sock"
  bind "unix:///tmp/xblog.sock"
  activate_control_app "unix://#{app_root}/tmp/sockets/pumactl.sock"
  daemonize true
  workers 1
  # threads 8, 16
  threads 2,4
  prune_bundler

  stdout_redirect "#{app_root}/log/puma_access.log", "#{app_root}/log/puma_error.log", true
else
  plugin :tmp_restart
end
