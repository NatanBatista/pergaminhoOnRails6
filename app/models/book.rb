class Book < ApplicationRecord
    has_and_belongs_to_many :categories
    validates :name, presence: true, uniqueness: true
    validates :author, presence: true
    validates :desc, presence: true, length: { minimum: 10 }
    validates :isbn, presence: true, length: { is: 13 }, uniqueness: true
end
