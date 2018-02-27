class Profile < ApplicationRecord
  attr_accessor :user_id
  belongs_to :user
end
