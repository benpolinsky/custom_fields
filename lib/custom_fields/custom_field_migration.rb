class CreateCustomFields < ActiveRecord::Migration
  def change
    create_table :custom_fields do |t|
      t.text :value
      t.text :label
      t.integer :kind, default: 0
      t.boolean :multiple
      t.references :fieldable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
