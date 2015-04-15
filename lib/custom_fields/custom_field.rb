class CustomField < ActiveRecord::Base
  serialize :value, Array
  serialize :label, Array
  enum kind: [:text, :text_area, :checkbox_fields, :radio_fields]
  before_save, :set_multiple, if: Proc.new {|custom_field| custom_field.new_record?}
  
  
  def set_multiple
    if [:checkbox_fields, :radio_fields].include? self.kind
      self.multiple = true
    else
      self.multiple = false
    end
  end
end
