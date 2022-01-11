User.create!(
  name: 'Test Name',
  email: 'test@email.com',
  password: 'foobar01',
  password_confirmation: 'foobar01'
)

99.times do |n|
  name = Faker::Name.name
  email = "test_#{n + 1}@email.com"
  password = 'password'
  User.create!(
    name: name,
    email: email,
    password: password,
    password_confirmation: password
  )
end
