class Category < ApplicationRecord

  class << self
    def all_available
      order("zorder desc")
    end
  end

end
