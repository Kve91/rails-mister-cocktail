class Cocktail < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
end
class Cocktail < ApplicationRecord
  mount_uploader :photo, PhotoUploader
end

