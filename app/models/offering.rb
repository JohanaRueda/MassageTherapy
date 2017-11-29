class Offering < ApplicationRecord
  belongs_to :course
  has_many :rosters, dependent: :destroy
  has_many :users, through: :rosters
end
