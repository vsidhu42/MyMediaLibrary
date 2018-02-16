json.extract! book, :id, :bookid, :title, :theyear, :author, :created_at, :updated_at
json.url book_url(book, format: :json)
