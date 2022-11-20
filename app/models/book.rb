class Book < ApplicationRecord
    has_many :books_category, dependent: :delete_all
    has_many :categories, through: :books_category
    validates :name, presence: true, uniqueness: true
    validates :author, presence: true
    validates :desc, presence: true, length: { minimum: 10 }
    validates :isbn, presence: true, length: { is: 13 }, uniqueness: true
end
