json.extract! bookrating, :id, :bookratingid, :thebookid, :rating, :name, :created_at, :updated_at
json.url bookrating_url(bookrating, format: :json)
