chef-repo
=========

```
sudo aptitude install git curl gcc g++ make autoconf
curl -L https://www.opscode.com/chef/install.sh | sudo bash
echo 'export PATH=/opt/chef/bin:$PATH' >> .profile
source .profile
sudo dpkg -i chefdk_0.0.1-1_amd64.deb
sudo /opt/chef/embedded/bin/gem install knife-solo
git clone https://github.com/akiray03/chef-repo.git /tmp/chef-repo
/tmp/chef-repo/localhost-cook
```

### Link

 - http://www.getchef.com/downloads/chef-dk/linux/
