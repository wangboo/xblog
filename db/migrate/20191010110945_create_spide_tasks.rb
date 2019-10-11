class CreateSpideTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :spide_tasks do |t|
      t.integer :user_id, null: false, comment: '用户id'
      t.string :flag, size: 32, null: false, comment: '网站缩写，用来区分网站'
      t.boolean :use_ip_pool, default: false, comment: '是否使用ip池'
      t.integer :ip_pool_size, default: 1000, comment: 'ip池数量'
      t.integer :state, default:0, comment: '发布状态，0编辑中，1已发布，2运行中，3运行完毕'
      t.string :description, size: 256, default: '', comment: '备注'
      t.timestamps
    end
  end
end
