# symfony-app
default[:"symfony-app"][:docroot] = '/vagrant/public'
default[:"symfony-app"][:server_name] = 'localhost'

# php
default[:php][:packages] << 'php7.2-curl'
default[:php][:packages] << 'php7.2-intl'
default[:php][:packages] << 'php7.2-memcache'
default[:php][:packages] << 'php7.2-gd'
default[:php][:packages] << 'php7.2-imagick'
