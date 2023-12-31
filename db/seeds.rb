puts 'Cleaning database...'
Movie.destroy_all

puts 'Creating Movies...'

movies =
  [
    { title: 'Wonder Woman 1984', overview: 'Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s', poster_url: "https://res.cloudinary.com/dpjincxmo/image/upload/v1692356747/uw9pwxucsxvco4yktncd.jpg", rating: 6.9 },
    { title: 'The Shawshank Redemption', overview: 'Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison', poster_url: 'https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg', rating: 8.7 },
    { title: 'Titanic', overview: '101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.', poster_url: 'https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg', rating: 7.9 },
    { title: "Ocean's Eight", overview: 'Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.', poster_url: 'https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg', rating: 7.0 }
  ]

require 'faker'

movies.each do |attributes|
  movie = Movie.create!(attributes)
  puts "Created #{movie.title}"
end

10.times do
  fake_movie = Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: Faker::Placeholdit.image,
    rating: rand(0..10)
  )
  fake_movie.save!
end

puts 'Finished!'
