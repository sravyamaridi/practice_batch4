#
# Cookbook:: .
# Recipe:: deploy_app
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package_name = node['custom_resource_demo']['appserver']['package_name']

remote_file '/var/lib/tomcat7/webapps/jenkins.war' do
  source 'http://ftp.yz.yamagata-u.ac.jp/pub/misc/jenkins/war/2.49/jenkins.war'
  owner 'root'
  group 'root'
  mode '0755'
  notifies :restart, "service[#{package_name}]"
  action :create
end

file '/etc/motd' do
    content 'This is managed by Chef'
    action :create
end



