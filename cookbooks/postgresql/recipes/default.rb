#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

case node['platform']
when 'debian','ubuntu'
	package postgresql do
	end
	service postgresql do
		action [:enable,:start]
	end

when 'redhat','centos','fedora'
	package postgresql do
		package_name 'postgresql-server'
		action :install
	end

end
