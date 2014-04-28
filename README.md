chef-repo
=========

```
sudo aptitude install git curl
curl -L https://www.opscode.com/chef/install.sh | sudo bash
echo 'export PATH=/opt/chef/bin:$PATH' >> .profile
source .profile
sudo /opt/chef/embedded/bin/gem install knife-solo berkshelf
git clone https://github.com/akiray03/chef-repo.git /tmp/chef-repo
/tmp/chef-repo/localhost-cook
```
