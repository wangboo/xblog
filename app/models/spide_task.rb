class SpideTask

  include Mongoid::Document
  include Mongoid::Timestamps

  field :user_id, type: Integer, default: 1
  field :flag, type: String, default: ''
  field :use_ip_pool, type: Boolean, default: false
  field :ip_pool_size, type: Integer, default: 1000
  # 发布状态，0编辑中，1已发布，2运行中，3运行完毕
  field :state, type: Integer, default: 0
  field :description, default: ''

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
