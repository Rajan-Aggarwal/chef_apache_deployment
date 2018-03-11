#
# Cookbook:: chef_apache_deployment
# Recipe:: server
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'httpd' do
	action :install
end

file '/var/www/html/index.html' do
	content "
	<h1>Hello, apache!</h1>
	HOSTNAME: #{node['hostname']}
	IP: #{node['ipaddress']}

"
end

service 'httpd' do
	action [ :enable, :start ]
end


