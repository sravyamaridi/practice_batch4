class Chef::Recipe::ResHelper

  def self.exists?
    return  ::File.exist?('/var/www/html/index.html')
  end

  def self.is_debian?
      return   node['platform_family']=='Debian'
  end     
end