#
# Cookbook:: attributedemo
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package_name = node['attributedemo']['package_to_be_installed']

package package_name do
  action :install
end

service package_name do
  action [:enable, :start]
end

cookbook_file '/var/www/html/index.html' do
  source 'index.html'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
  notifies :restart, "service[#{package_name}]"
  only_if { ::File.exists?('/var/www/html/index.html')}
end

remote_file '/home/ubuntu/jenkins.war' do
  source 'http://ftp.yz.yamagata-u.ac.jp/pub/misc/jenkins/war/2.49/jenkins.war'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
