class Recipe < ApplicationRecord

    has_many :ingredients, dependent: :destroy
    has_many :instructions, dependent: :destroy

    validates :title, presence: true
    validates :description, length: { minimum:20}, presence: true
    validates :image_url, presence: true
    validates :category, presence: true
end
