module Sortable
  extend ActiveSupport::Concern

  included do |base|
    scope :all_with_sort, -> { order("zorder desc") }
    scope :all_with_sort_cols, -> { select("name, id").order("zorder desc").map { |c| [c.name, c.id] } }
  end

end