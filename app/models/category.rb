class Category < ApplicationRecord
    has_many :books_category, dependent: :restrict_with_error
    has_many :books, through: :books_category
    validates :name, presence: true, uniqueness: true, length: { maximum: 20 }
end
