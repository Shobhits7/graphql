10.times do
  user = User.create(
    email: Faker::Internet.email,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )

  Movie.create(
    user: user,
    title: Faker::Movie.title,
    year: Faker::Date.between(from: '2000-01-01', to: '2021-01-01').year,
    genre: Faker::Book.genre
  )
end
