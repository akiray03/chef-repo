#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

node['base']['packages'].each do |pkg|
  package pkg do
    action :install
  end
end if node['base']['packages']

template '/home/akira/.gitconfig' do
  source 'gitconfig'
end

template '/home/akira/.gitignore' do
  source 'gitignore'
end

git '/home/akira/dotfiles' do
  repository 'git@github.com:akiray03/dotfiles.git'
  revision 'master'
  user 'akira'
  action :sync
end

## ufw
firewall "ufw" do
    action :enable
end

firewall_rule "http" do
  port 80
  action :allow
  notifies :enable, "firewall[ufw]"
end
firewall_rule "https" do
  port 443
  action :allow
  notifies :enable, "firewall[ufw]"
end

firewall_rule "ssh" do
  port 22
  action :allow
  notifies :enable, "firewall[ufw]"
end
