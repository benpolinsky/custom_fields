require 'rails_helper'


describe CustomFields do
  it 'has a version number' do
    expect(CustomFields::VERSION).not_to be nil
  end

  let(:post){Post.create}
  
  context "custom fields" do
    it 'adds custom_fields' do
      post.custom_fields.create(contents: "Custom Content")
      expect(post.custom_fields.count).to be 1
    end
  end
  
  context "custom field types" do

      let(:custom_field) {post.custom_fields.create(contents: "Custom Content")}
      let(:custom_field_type) {custom_field.custom_field_type = CustomFieldType.create(name: "text")}

    it 'adds custom_field_types' do
      expect(custom_field_type.class).to eq CustomFieldType
    end
  end
end
