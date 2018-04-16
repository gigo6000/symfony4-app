#
# Cookbook:: symfony-app
# Recipe:: apache
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
include_recipe 'apache2'
include_recipe 'apache2::mod_rewrite'
include_recipe 'apache2::mod_deflate'

apache_module 'proxy_fcgi'
apache_module 'proxy'

#vhost
template "#{node[:apache][:dir]}/sites-available/symfony.conf" do
    source "vhost.conf.erb"
    variables({
         :host => node[:"symfony-app"][:server_name],
         :docroot => node[:"symfony-app"][:docroot],
    })
    owner "root"
    group node[:apache][:root_group]
    mode 0644 
    notifies :restart, "service[apache2]", :delayed
end  

apache_site 'symfony'
