5.times do |n|
  name = Faker::JapaneseMedia::Doraemon.character
  email = "test#{n + 1}@example.com"
  password = "123456"

  User.create!(
    name: name,
    email: email,
    password: password,
    password_digest: password
  )
end

20.times do |n|
  title = Faker::Movies::HarryPotter.book
  content = Faker::Movies::HarryPotter.quote

  Blog.create!(
    title: title,
    content: content,
    user_id: rand(1..5)
  )
end