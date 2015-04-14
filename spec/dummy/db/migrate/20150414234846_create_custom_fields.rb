class CreateCustomFields < ActiveRecord::Migration
  def change
    create_table :custom_fields do |t|
      t.text :contents
      t.references :fieldable, polymorphic: true, index: true
      t.references :custom_field_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
