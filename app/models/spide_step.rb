class SpideStep < ApplicationRecord

  def short_desc
    description.slice(0, 20)
  end

end
