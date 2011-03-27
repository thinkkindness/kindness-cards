Factory.define :user do |f|
  f.sequence(:name) { |n| "Test User #{n}" }
  f.sequence(:email) { |n| "test-user#{n}@example.com" }
  f.password 'password'
  f.password_confirmation 'password'
end

Factory.define :card do |f|
  f.sequence(:uid) { |n| "#{n}" }
end

Factory.define :act do |f|
  f.association :card
  f.description 'This is some act of kindness.'
end