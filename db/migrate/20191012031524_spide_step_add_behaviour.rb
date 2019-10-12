class SpideStepAddBehaviour < ActiveRecord::Migration[6.0]
  def change
    # 爬虫基本行为, 目前支持 u2p (url to page), p2p (page to page), p2t (page to item), t2p (item to page)
    add_column :spide_steps, :behaviour, :string, limit: 32
    # url
    add_column :spide_steps, :url,:string, limit: 128

  end
end
