class PostsAddHtml < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :html, :text, default: ''
  end
end
