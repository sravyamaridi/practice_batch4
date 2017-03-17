
if node['platform'] == 'ubuntu'
  default['attributedemo']['package_to_be_installed'] = 'apache2'
elsif node['platform'] == 'Redhat'
  default['attributedemo']['package_to_be_installed'] = 'httpd'
end
