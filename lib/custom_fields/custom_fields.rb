module CustomFields
  extend ActiveSupport::Concern
  
  included do
    has_many :custom_fields, as: :fieldable
    accepts_nested_attributes_for :custom_fields
  end


end