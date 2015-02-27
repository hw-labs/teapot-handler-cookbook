include_recipe 'chef_handler'

chef_gem 'chef-teapot' do
  source '/tmp/kitchen/data/chef-teapot-0.1.1.gem'
end


require 'chef/handler/teapot'

#load at compiletime
chef_handler "Chef::Handler::Teapot" do
  source "chef/handler/teapot"
  action :nothing
end.run_action(:enable)
