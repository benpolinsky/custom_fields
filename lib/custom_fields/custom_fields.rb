module CustomFields
  extend ActiveSupport::Concern
  
  included do
    has_many :custom_fields, as: :fieldable
  end


end