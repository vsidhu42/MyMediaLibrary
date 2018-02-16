# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

csv_books = Rails.root + 'db/books.csv'
csv_songs = Rails.root + 'db/songs.csv'
csv_movies = Rails.root + 'db/movies.csv'

options_books = {file_encoding: 'iso-8859-1',
                 key_mapping: {book_id:nil, best_book_id:nil,
                               work_id:nil, books_count:nil, isbn:nil ,
                               isbn13:nil , original_title:nil , language_code:nil ,
                               average_rating:nil , ratings_count:nil , work_ratings_count:nil , work_text_reviews_count:nil ,
                               ratings_1:nil , ratings_2:nil , ratings_3:nil , ratings_4:nil ,
                               ratings_5:nil , image_url:nil , small_image_url:nil }}

options_songs = {file_encoding: 'iso-8859-1',
                 key_mapping: {discovery:nil, rank:nil }}

options_movies = {file_encoding: 'iso-8859-1',
                  key_mapping: {fn:nil, tid:nil, ratingcount:nil , nrofgenre:nil }}



books = SmarterCSV.process(csv_books,options_books)

puts(books.size)

Book.delete_all

books.each do |book|
  book_object = Book.create(book)
end

puts(Book.count)



songs = SmarterCSV.process(csv_songs,options_songs)

puts(songs.size)

Song.delete_all

songs.each do |song|
  song_object = Song.create(song)
end



puts(Song.count)

movies = SmarterCSV.process(csv_movies,options_movies)

puts(movies.size)

Movie.delete_all

movies.each do |movie|
  movie_object = Movie.create(movie)
end

puts(Movie.count)