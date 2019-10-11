class CreateSpideSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :spide_steps do |t|
      t.string :selector, size: 32, default: '', comment: 'css选择器'
      t.string :op_type, size: 32, default: 'click', comment: '操作类型, click 点击，submit 提交'
      t.string :value, size: 64, default: '', comment: '默认值'
      t.string :description, size: 256, default: '', comment: '备注'
      t.integer :step, default: 0, comment: '第几步'
      t.timestamps

      t.belongs_to :spide_tasks
    end
  end
end
