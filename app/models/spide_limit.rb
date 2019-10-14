class SpideLimit

  include Mongoid::Document
  include Mongoid::Timestamps

  field :website, default: ''
  field :rate_limit, type: Float, default: 0.5
  field :enabled, type: Boolean, default: false
  field :description, default: ''

  belongs_to :spide_task


end
