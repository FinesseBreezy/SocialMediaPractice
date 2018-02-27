class User < ApplicationRecord
  attr_accessor :user_id
  has_many :posts
  has_one :profile
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  def build_profile
    Profile.create({user_id: :id}) # Associations must be defined correctly for this syntax, avoids using ID's directly.
  end

  after_create :build_profile
end
