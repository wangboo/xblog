class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title, limit: 128, null: false
      t.text :content, null: false
      t.integer :visit_count, default: 0
      t.integer :category_id, null: false
      t.boolean :publish, default: false
      t.timestamps
    end
  end
end
