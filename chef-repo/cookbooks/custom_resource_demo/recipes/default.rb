#
# Cookbook:: custom_resource_demo
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'custom_resource_demo::appserver'
include_recipe 'custom_resource_demo::deploy_app'

motd 'test' do
    message 'This is changed by Chef'
    action :create
    only_if {ResHelper.is_debian?}
end

