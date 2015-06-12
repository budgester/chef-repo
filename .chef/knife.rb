# See https://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "budgester"
client_key               "#{current_dir}/budgester.pem"
validation_client_name   "budgester-validator"
validation_key           "#{current_dir}/budgester-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/budgester"
cookbook_path            ["#{current_dir}/../cookbooks"]

knife[:aws_ssh_key_id] = 'budgester'

knife[:aws_access_key_id] = ENV['AWS_ACCESS_KEY_ID'] 
knife[:aws_secret_access_key] = ENV['AWS_SECRET_ACCESS_KEY']
knife[:flavor] = "t2.micro"
knife[:region] = "eu-west-1"
