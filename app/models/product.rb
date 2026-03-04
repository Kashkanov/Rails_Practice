class Product < ApplicationRecord
  has_many :subscribers, dependent: :destroy  # This tells Rails how to join queries between the two database tables
  has_one_attached :featured_image
  has_rich_text :description

  validates :name, presence: true
  validates :inventory_count, numericality: { greater_than_or_equal_to: 0 }
end
