puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'First User', :email => 'user@test.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user.name

puts 'SETTING UP INITIAL CARDS'
10.times do |i|
  card = Card.create! :uid => i.to_s
  puts 'Card created: ' << card.uid
end