if node[:opsworks][:instance][:layers].include?("rails-puma-app")
  normal[:opsworks][:rails_stack][:recipe] = "opsworks-puma"
  normal[:opsworks][:rails_stack][:restart_command] = "/srv/www/opsworks_rails_demo/shared/puma/puma_restart.sh"
  normal[:deploy][:opsworks_rails_demo][:puma][:thread_min] =  1
  # Be careful when increasing this as Rails apps using puma and postgres based their connection pool on this value.
  normal[:deploy][:opsworks_rails_demo][:puma][:thread_max] = 15
  normal[:deploy][:opsworks_rails_demo][:puma][:workers] = node[:cpu][:total] > 2 ? node[:cpu][:total] : 2
  normal[:deploy][:opsworks_rails_demo][:puma][:logrotate] = false
  normal[:deploy][:opsworks_rails_demo][:puma][:worker_timeout] = 180
  normal[:deploy][:opsworks_rails_demo][:puma][:logrotate] = false
  normal[:deploy][:opsworks_rails_demo][:http_port] = 81
  normal[:haproxy][:health_check_url] = '/okcomputer'
  normal[:haproxy][:enable_stats] = true
  normal[:haproxy][:stats_user] = "demo"
  normal[:haproxy][:stats_password] = "awsmn"
  normal[:haproxy][:stats_url] = "/haproxy?stats"
end

