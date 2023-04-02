class Dish < ApplicationRecord

    validates :title, presence: true
    validates :subtitle, presence: true
    validates :image_url, presence: true
    validates :description, length: {minimum:22}
end
