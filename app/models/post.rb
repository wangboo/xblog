class Post

  include Mongoid::Document
  include Mongoid::Timestamps
  belongs_to :category

  field :title
  field :content
  field :visit_count, type: Integer, default: 0
  field :publish, type: Boolean, default: false
  field :html, default: ''

  scope :top_hots, -> { where(publish: true).limit(5) }

  def short_title
    if title.size < 18
      title
    else
      title.slice(0, 18)
    end
  end

  def publish_state
    if publish
      "已发表"
    else
      "编辑中"
    end
  end

end
