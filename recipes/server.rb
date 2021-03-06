#
# Cookbook:: chef_apache_deployment
# Recipe:: server
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'httpd' do
	action :install
end

template '/var/www/html/index.html' do
	action :create
	source "index.html.erb"	
end

service 'httpd' do
	action [ :enable, :start ]
end


