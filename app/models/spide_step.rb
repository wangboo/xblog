class SpideStep

  include Mongoid::Document
  include Mongoid::Timestamps

  # 行为
  field :behaviour, default: 'u2p'
  # 网页地址 u2p需要
  field :url, default: ''
  # css选择器
  field :selector, default: ''
  # 操作类型, click 点击，submit 提交
  field :op_type, default: 'click'
  # 默认值
  field :value, default: ''
  field :description, default: ''
  # 第几步
  field :step, type: Integer, default: 0

  belongs_to :spide_task


  def short_desc
    description.slice(0, 20)
  end

end
