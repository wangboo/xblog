class SpideTask < ApplicationRecord

  has_many :spide_steps
  has_many :spide_limits

  def spide_steps_with_sort
    spide_steps.order('step')
  end

  def short_desc
    description.slice(0, 20)
  end

  # 0编辑中，1已发布，2运行中，3运行完毕
  def state_str
    case state
    when 0
      "编辑中"
    when 1
      "已发布"
    when 2
      "运行中"
    when 3
      "运行完毕"
    end
  end

end
