class PressArticle < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :description, prensence: true
end
