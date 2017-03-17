#
# Cookbook:: .
# Recipe:: db_server
#
# Copyright:: 2017, The Authors, All Rights Reserved.

apt_update 'update' do
  action :update
end

#install mysql client
mysql_client 'default' do
  action :create
end


dbgitem = data_bag_item('admin','my_sql_root_passwd',IO.read("/etc/chef/encrypted_data_bag_secret"))
#install mysql server and bindaddress to every one
mysql_service 'default' do
  bind_address '0.0.0.0'
  port '3306'
  initial_root_password dbgitem['passwd']
  action [:create, :start]
end
