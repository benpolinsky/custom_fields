module CustomFields
  module Generators
    class InstallGenerator < Rails::Generators::Base
      def create_custom_fields
        generate "model", "custom_field value:text label:text kind:integer multiple:booplean fieldable:references{polymorphic}:index"
        copy_file 'custom_field.rb', 'app/models/custom_field.rb'
      end
    end
  end  
end
