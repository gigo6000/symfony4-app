name 'webserver'
description 'A role to configure our web servers'
run_list 'recipe[symfony-app::apache]', 'recipe[symfony-app::php]'
