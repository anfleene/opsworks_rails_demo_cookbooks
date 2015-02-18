cookbook 'build-essential'
cookbook 'sysctl'

# SN open source cookbooks
cookbook 'deploy', github: "sportngin-cookbooks/opsworks-deploy"
cookbook 'haproxy', github: "sportngin-cookbooks/opsworks-haproxy"

%w[opsworks-rolling-restart opsworks-migrations opsworks-puma opsworks-utils].each do |cb|
  cookbook cb, github: "sportngin-cookbooks/#{cb}"
end
# AWS opsworks-cookbooks
%w[apache2 dependencies gem_support nginx packages opsworks_agent_monit opsworks_bundler opsworks_commons opsworks_initial_setup opsworks_nodejs opsworks_rubygems ruby scm_helper ssh_users rails unicorn].each do |cb|
  cookbook cb, github: 'aws/opsworks-cookbooks', branch: 'release-chef-11.10', rel: cb
end

metadata
