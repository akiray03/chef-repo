#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

packages = %w(zsh lv vim git ruby subversion apache2 make gcc curl tmux)
packages.each do |pkg|
  package pkg do
    action :install
  end
end

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
