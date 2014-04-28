file_cache_path "/tmp/chef-repo/cache"
berks_path = File.expand_path("~/.berkshelf/cookbooks")
cookbook_path ["/tmp/chef-repo/cookbooks", "/tmp/chef-repo/site-cookbooks", berks_path]
role_path "/tmp/chef-repo/roles"
log_level :debug
