name 'vagrant'
description "A environment to configure our vagrant box"
default_attributes(
  :apache => {
    :user => 'vagrant',
    :group => 'vagrant',
  }
)
