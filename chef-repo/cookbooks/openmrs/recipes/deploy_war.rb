#
# Cookbook:: .
# Recipe:: deploy_war
#
# Copyright:: 2017, The Authors, All Rights Reserved.

appserver_package = node['openmrs']['applicationserver']['package_name'] 

remote_file '/var/lib/tomcat7/webapps/openmrs.war' do
  source 'https://downloads.sourceforge.net/project/openmrs/releases/OpenMRS_Platform_2.0.1/openmrs.war'
  owner 'root'
  group 'root'
  mode '0755'
  notifies :restart, "service[#{ appserver_package }]"
  action :create_if_missing
end
