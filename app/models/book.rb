class Book < ApplicationRecord
    validates :title, presence: true, length: {minimum: 3, maximum:15}
    validates :description, presence: true, length: {minimum: 6, maximum:100}
    validates :price, presence: true
    validates :count, presence: true
end