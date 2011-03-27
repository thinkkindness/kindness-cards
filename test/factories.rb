Factory.define :user do |f|
  f.sequence(:name) { |n| "Test User #{n}" }
  f.sequence(:email) { |n| "test-user#{n}@example.com" }
  f.password 'password'
  f.password_confirmation 'password'
end