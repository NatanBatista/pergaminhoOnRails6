json.extract! book, :id, :name, :author, :desc, :isbn, :created_at, :updated_at
json.url book_url(book, format: :json)
