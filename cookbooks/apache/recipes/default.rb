#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

case node['platform']
when 'debian','ubuntu'
	execute "update-upgrade" do
		command "apt-get update && apt-get upgrade -y"
		action :run
	end
	package apache2 do
	end
	service apache2 do
		action [:enable,:start]
	end

when 'redhat','centos','fedora'
	package httpd do
	end
	service httpd do
		action [:enable,:start]
	end
end



