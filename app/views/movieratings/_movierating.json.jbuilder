json.extract! movierating, :id, :movieratingid, :themovieid, :rating, :name, :created_at, :updated_at
json.url movierating_url(movierating, format: :json)
