# frozen_string_literal: true
# This is a Chef attributes file. It can be used to specify default and override
# attributes to be applied to nodes that run this cookbook.

#symfony-app
default[:"symfony-app"][:docroot] = '/vagrant/public'
default[:"symfony-app"][:host] = 'localhost'

# For further information, see the Chef documentation (https://docs.chef.io/essentials_cookbook_attribute_files.html).
