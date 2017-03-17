#
# Cookbook:: .
# Recipe:: appserver
#
# Copyright:: 2017, The Authors, All Rights Reserved.


package_name = node['custom_resource_demo']['appserver']['package_name']

apt_update 'update' do
  action :update
end

package package_name do
  action :install
end

service package_name do
  action [:enable, :start]
end
