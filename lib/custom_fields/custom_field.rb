class CustomField < ActiveRecord::Base
  belongs_to :fieldable, polymorphic: true
  validates_presence_of :kind
  serialize :value, Array
  serialize :label, Array
  enum kind: [:text, :text_area, :checkbox_fields, :radio_fields]
  before_save :set_multiple
  
  
  private 
  def set_multiple
     self.multiple = [:checkbox_fields, :radio_fields].include? self.kind ? true : false
  end
end
