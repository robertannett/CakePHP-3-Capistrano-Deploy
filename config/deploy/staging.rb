# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary server in each group
# is considered to be the first unless any hosts have the primary
# property set.  Don't declare `role :all`, it's a meta role.

#role :app, %w{rachaelannett@rachaelannett.co.uk}
#role :web, %w{rachaelannett@rachaelannett.co.uk}
#role :db,  %w{rachaelannett@rachaelannett.co.uk}

# Default deploy_to directory is /var/www/my_app
set :deploy_to, '/var/www/vhosts/mmthdev.com/habitat.mmthdev.com'

# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server definition into the
# server list. The second argument is a, or duck-types, Hash and is
# used to set extended properties on the server.

server '205.186.154.115', 
port: 22,
roles: %w{web app db}


# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult[net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start).
#
# Global options
# --------------
#  set :ssh_options, {
#    keys: %w(/home/rlisowski/.ssh/id_rsa),
#    forward_agent: false,
#    auth_methods: %w(password)
#  }
#
# And/or per server (overrides global)
# ------------------------------------
# server 'example.com',
#   user: 'user_name',
#   roles: %w{web app},
#   ssh_options: {
#     user: 'user_name', # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: 'please use keys'
#   }

set :linked_dirs, %w{
	src/private/app/files
	src/private/app/tmp
	src/public/media
}
set :linked_files, %w{
	src/private/app/Config/core.php
	src/private/app/Config/database.php
}

namespace :deploy do
  after :finishing, 'deploy:cleanup'
end