module ActiveWarehouse
  class BridgeGenerator < Rails::Generators::NamedBase
    include Rails::Generators::Migration
    self.source_root(File.expand_path("../templates", __FILE__))

    argument :name, :type => :string, :required => true, :banner => 'BridgeName'
    class_option :skip_migration, :desc => 'Don\'t generate migration file for bridge.', :type => :boolean
    check_class_collision
    check_class_collision :suffix => "Test"  
  
    def initialize(*args, &block)
      super
    
      @name = @name.tableize.singularize
      @table_name = "#{@name}_bridge"
      @class_name = "#{@name.camelize}Bridge"
      @file_name = "#{@class_name.tableize.singularize}"
    end
    
     # Implement the required interface for Rails::Generators::Migration.
      # taken from http://github.com/rails/rails/blob/master/activerecord/lib/generators/active_record.rb
      def self.next_migration_number(dirname)
        if ActiveRecord::Base.timestamped_migrations
          Time.now.utc.strftime("%Y%m%d%H%M%S")
        else
         "%.3d" % (current_migration_number(dirname) + 1)
       end
     end

     def create_migration_file
       unless options[:skip_migration]
         migration_template 'migration.rb', "db/migrate/create_#{file_name.gsub(/\//, '_').pluralize}.rb"
       end
     end

     def create_files
       template 'model.rb', "app/models/#{file_name}.rb"
       template 'unit_test.rb',"test/unit/#{file_name}_test.rb"
       template 'fixture.yml', "test/fixtures/#{table_name}.yml"
     end

  end
end