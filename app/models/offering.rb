class Offering < ApplicationRecord
  belongs_to :course
  has_many :rosters, dependent: :destroy
  has_many :users, through: :rosters

  validates :coursePrice, presence: true, numericality: true, format: { with: /\A\d{1,4}(\.\d{0,2})?\z/ }
end
