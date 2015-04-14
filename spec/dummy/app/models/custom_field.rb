class CustomField < ActiveRecord::Base
  belongs_to :fieldable, polymorphic: true
  belongs_to :custom_field_type
end
