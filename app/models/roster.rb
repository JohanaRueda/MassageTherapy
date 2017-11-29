class Roster < ApplicationRecord
  belongs_to :user
  belongs_to :offering
end
