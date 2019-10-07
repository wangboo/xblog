class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :name, limit: 128, null: false
      t.integer :zorder, default: 0
      t.timestamps
    end
  end
end
