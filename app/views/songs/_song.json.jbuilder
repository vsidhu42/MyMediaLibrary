json.extract! song, :id, :songid, :title, :theyear, :artist, :album, :created_at, :updated_at
json.url song_url(song, format: :json)
