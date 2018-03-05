class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :drug
  validates :drug, uniqueness: { scope: :user }
end
