class Profile < ApplicationRecord
  belongs_to :user
  def self.search(search)
    if search
      where(["name LIKE ?","%#{search}%"])
    else
      Profile.all
    end
  end
end
