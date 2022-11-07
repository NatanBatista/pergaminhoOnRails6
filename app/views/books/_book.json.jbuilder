json.extract! book, :id, :name, :author, :desc, :isbn, :date, :created_at, :updated_at
json.url book_url(book, format: :json)
