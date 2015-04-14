module CustomFields
  module Generators
    class InstallGenerator < Rails::Generators::Base
      def create_custom_fields
        generate 'model', "custom_field_type name"
        generate "model", "custom_field contents:text fieldable:references{polymorphic}:index custom_field_type:references:index"
      end
    end
  end  
end
