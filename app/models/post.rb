class Post < ApplicationRecord

  def short_title
    if title.size < 18
      title
    else
      title.slice(0, 18)
    end
  end

end
