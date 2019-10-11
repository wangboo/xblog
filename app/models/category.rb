class Category < ApplicationRecord

  has_many :posts

  include Sortable

end
