class Category

  include Mongoid::Document
  include Mongoid::Timestamps
  has_many :posts
  include Sortable

  field :name
  field :zorder, type: Integer


end
