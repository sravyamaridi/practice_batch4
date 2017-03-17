#
# Cookbook:: openmrs
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'openmrs::install_tomcat'
include_recipe 'openmrs::deploy_war'