# Attributes Specific To Application Server
if node['platform_family'] == 'debian'
  default['openmrs']['applicationserver']['package_name'] = 'tomcat7'
else
  default['openmrs']['applicationserver']['package_name'] = 'tomcat'
end

default['openmrs']['applicationserver']['additional_packages'] = ['tomcat7-docs','tomcat7-admin','tomcat7-examples']

#configuring tomcat-users.xml
default['openmrs']['applicationserver']['user'] = 'admin'
default['openmrs']['applicationserver']['password'] = 'password'
default['openmrs']['applicationserver']['role'] = 'manager-gui,admin-gui'
