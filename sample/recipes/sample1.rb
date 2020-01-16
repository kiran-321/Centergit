#
# Cookbook:: sample
# Recipe:: sample1
#
# Copyright:: 2020, The Authors, All Rights Reserved.

file '/robo' do
	content "MY MACHINE
	HOSTNAME: #{node['hostname']}
	IPADDRESS: #{node['ipaddress']}
	CPU: #{node['cpu']['0']['mhz']}
	MEMORY: #{node['memory']['total']}"
	owner 'root'
	group 'root'
	action :create
end

