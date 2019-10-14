module Sortable
  extend ActiveSupport::Concern

  included do |base|
    scope :all_with_sort, -> { order("zorder desc") }
  end

  def name_id_pair
    [name, id.to_s]
  end

  module ClassMethods

    def all_with_sort_cols
      all_with_sort.map(&:name_id_pair)
    end

  end

end