
#
# Cookbook:: demo
# Recipe:: demo1
#
# Copyright:: 2020, The Authors, All Rights Reserved.

package 'httpd' do
	action :install
end

file '/var/www/html/index.html' do
	content "WHATEVER IT TAKES!!! MY MACHINE
        HOSTNAME: #{node['hostname']}
        IPADDRESS: #{node['ipaddress']}
        CPU: #{node['cpu']['0']['mhz']}
        MEMORY: #{node['memory']['total']}"
        owner 'root'
        group 'root'
        action :create
	action :create
end

service 'httpd' do
	action [ :enable, :start ]
end



