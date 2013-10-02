#
# application "expressionengine" do
#   domain node[:newspring][:domain] #basically the FQDN
#   path node[:newspring][:deploy_to] #web root to contain ALL domains
#   system_folder node[:newspring][:system_folder] #default is 'system' but could be anything.
#   owner node[:newspring][:deploy_as]
#   group node[:newspring][:deploy_as]
#   repo node[:newspring][:repo]
#   revision node[:newspring][:revision]
#   deploy_key node[:newspring][:deploy_key]
#   environment node[:newspring][:env]
#   enable_submodules true
#
#   ##Multsite LWRP will symlink the directories you specify below.
#   #Force SSL would force the htaccess file (or web_app conf) to force that domain to resolve with HTTPS only.
#   #Multisite only gets run if site does not already exists. EE stores multisite in DB so theres never any real need to rerun
#   multisite do
#     domain "perrynoble.com"
#     symlink ["images","assets","themes"]
#     htaccess #? option to allow override the default template and create one from alternate cookbook
#   end
#
#   multisite do
#     domain "give.newspring.cc"
#     symlink ["images","assets","themes"]
#     force_ssl true
#   end
#
#   multisite do
#     domain "unleash.cc"
#     symlink ["images","assets","themes"]
#   end
#
#   multisite do
#     domain "stepupnewspring.cc"
#     symlink ["images","assets","themes"]
#   end
#
#   multisite do
#     domain "newspringcollege.cc"
#     symlink ["images","assets","themes"]
#   end
# end
