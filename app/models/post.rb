class Post < ApplicationRecord
  belongs_to :user
  def self.search(search)
    if search
      where(["title LIKE ?","%#{search}%"])
    else
      Post.all
    end
  end

end
