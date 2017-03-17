#
# Cookbook:: .
# Recipe:: install_utils
#
# Copyright:: 2017, The Authors, All Rights Reserved.

packages = [ 'tree','nano']

packages.each do |pack|
    package pack do
      action :install
    end
end    


packages_serv= {
    "pakcage" => "apache2",
    "action"  => :install
}

packages_serv.each do |key, value|
   execute key do
     command "echo ${value}"
     action :run
   end
   
end