class Book < ApplicationRecord
    belongs_to :category
    validates :name, presence: true, uniqueness: true
    validates :author, presence: true
    validates :desc, presence: true, length: { minimum: 10 }
    validates :isbn, presence: true, length: { is: 13 }, uniqueness: true
end
