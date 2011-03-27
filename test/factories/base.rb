# Theia factories
Factory.define :users do |f|
  f.name 'Test User 1'
  f.email 'test-user1@example.com'
  f.password 'password'
  f.password_confirmation 'password'
end