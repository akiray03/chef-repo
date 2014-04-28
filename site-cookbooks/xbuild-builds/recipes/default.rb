#
# Cookbook Name:: xbuild-builds
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe   'xbuild'

node["xbuild-builds"]["rubies"].each do |info|
  xbuild_ruby "install ruby #{info["version"]}" do
    version info["version"]
    prefix  info["prefix"]
  end
end
