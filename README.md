# upstart_bug

kitchen converge should result in the following error:

           ================================================================================
           Error executing action `start` on resource 'service[hung_service]'
           ================================================================================
           
           NoMethodError
           -------------
           undefined method `[]' for nil:NilClass
           
           Resource Declaration:
           ---------------------
           # In /tmp/kitchen/cache/cookbooks/upstart_bug/recipes/default.rb
           
            14: service 'hung_service' do
            15:   action :start
            16: end

