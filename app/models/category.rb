class Category < ApplicationRecord

  class << self

    def all_available
      order("zorder, id desc")
    end

    def all_available_col
      all_available.map { |c| [c.name, c.id] }
    end
  end

end
