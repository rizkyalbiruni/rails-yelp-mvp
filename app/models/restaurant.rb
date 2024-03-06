class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  categories = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, presence: true
  validates :category, inclusion: { in: categories, message: "'%{values}' is not valid" }
  validates :address, presence: true
  validates :category, presence: true
end
