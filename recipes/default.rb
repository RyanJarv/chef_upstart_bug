#
# Cookbook Name:: upstart_bug
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

cookbook_file '/etc/init/hung_service.conf' do
  source 'hung_service.conf'
end

# Put service in a non start/stop state
execute 'start hung_service&'

service 'hung_service' do
  action :start
end