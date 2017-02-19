# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "renelion"
client_key               "#{current_dir}/renelion.pem"
chef_server_url          "https://renelion1.mylabserver.com/organizations/linux_academy"
cookbook_path            ["#{current_dir}/../cookbooks"]
