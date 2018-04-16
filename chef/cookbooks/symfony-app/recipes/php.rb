#
# Cookbook:: symfony-app
# Recipe:: php
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
include_recipe 'php'

#Install FPM pool
php_fpm_pool 'default' do
    listen '127.0.0.1:9000'
    process_manager 'ondemand'
    user 'vagrant'
    user 'vagrant'
    action :install
end

