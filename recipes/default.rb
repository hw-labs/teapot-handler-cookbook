include_recipe 'chef_handler'

require 'chef/handler/teapot'

#load at compiletime
chef_handler "Chef::Handler::Teapot" do
  source "chef/handler/teapot"
  action :nothing
end.run_action(:enable)
