class CreateSpideLimits < ActiveRecord::Migration[6.0]
  def change
    create_table :spide_limits do |t|
      t.string :website, limit: 32, default: ''
      t.float :rate_limit, default: 0.5
      t.boolean :enabled, default: false
      t.string :description, limit:512
      t.timestamps

      t.belongs_to :spide_task
    end
  end
end
