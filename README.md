# Slick Fields

- Custom Fields for Rails


Here's the functionality I want:

App -

Post < ActionModel::Base
  include SlickFields
end


so this would add these class methods

has_many :slick_fields, as: :slick_fieldable

class SlickField < ActiveModel::Base
  params polymorphic:references, value, field_type:references
  belongs_to :field_type
  #polymorphic stuff
end

class SlickFieldType < ActiveModel::Base
  params type:integer - enum
  has_many slick_fields
end