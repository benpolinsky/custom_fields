require 'rails_helper'


describe CustomFields do
  it 'has a version number' do
    expect(CustomFields::VERSION).not_to be nil
  end

  let(:post){Post.create}
  
  context "custom fields" do
    it 'adds custom_fields' do
      cf = CustomField.create(value: ['asd'])
      expect(cf.persisted?).to be true
    end
  end
  
  context "custom field labels" do

      let(:custom_field) {post.custom_fields.create(value: ["Custom Content"])}

    it 'can add a label' do
      custom_field.label << "A Label"
      custom_field.save
    end
  end
end
