module CustomFields
  module Generators
    class InstallGenerator < Rails::Generators::Base
      
      source_root File.expand_path('../../../../custom_fields', __FILE__)
      
      def create_custom_fields
        copy_file "custom_field_migration.rb", "db/migrate/CreateCustomFields.rb"
        copy_file 'custom_field.rb', 'app/models/custom_field.rb'
      end
    end
  end  
end
