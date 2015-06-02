include_recipe 'chef_handler'

require 'chef/handler/teapot'

chef_gem 'chef-teapot' do
  source '/tmp/kitchen/data/teapot-chef-handler.gem'
end

#load at compiletime
chef_handler "Chef::Handler::Teapot" do
  source "chef/handler/teapot"
  action :nothing
end.run_action(:enable)
