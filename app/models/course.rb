class Course < ApplicationRecord
  has_many :offerings, dependent: :destroy
end
