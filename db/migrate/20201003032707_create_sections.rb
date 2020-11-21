class CreateSections < ActiveRecord::Migration[6.0]
  def change
    create_table :sections do |t|
      t.string :name
      t.text :description
      t.string :emblem
      t.text :quote
      t.string :section_lead

      t.timestamps
    end
  end
end
