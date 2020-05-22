# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Order.destroy_all
Product.destroy_all
Payment.destroy_all

user1 = User.create(first_name:'johnson',last_name:'kow',username:'johnsonkow',password:'1234')
user2 = User.create(first_name:'samantha',last_name:'ponce',username:'samanthaponce',password:'1234')
user3 = User.create(first_name:'diana',last_name:'ponce',username:'dianaponce',password:'1234')
user4 = User.create(first_name:'caryn',last_name:'mccarthy',username:'carynmccarthy',password:'1234')
user5 = User.create(first_name:'jacky',last_name:'lin',username:'jackylin',password:'1234')
user6 = User.create(first_name:'joseph',last_name:'cha',username:'josephcha',password:'1234')

order1 = Order.create(confirmation_number: rand(1000...5000))
order2 = Order.create(confirmation_number: rand(1000...5000))
order3 = Order.create(confirmation_number: rand(1000...5000))
order4 = Order.create(confirmation_number: rand(1000...5000))
order5 = Order.create(confirmation_number: rand(1000...5000))

product1 = Product.create(order_id:Order.all.sample.id,seller_id: User.all.sample.id, buyer_id:User.all.sample.id,title:'Title 1',type_of:'Nature',category:'landscape',price:100.00)
product2 = Product.create(order_id:Order.all.sample.id,seller_id: User.all.sample.id, buyer_id:User.all.sample.id,title:'Title 2',type_of:'Nature',category:'landscape',price:100.00)
product3 = Product.create(order_id:Order.all.sample.id,seller_id: User.all.sample.id, buyer_id:User.all.sample.id,title:'Title 3',type_of:'Nature',category:'landscape',price:100.00)
product4 = Product.create(order_id:Order.all.sample.id,seller_id: User.all.sample.id, buyer_id:User.all.sample.id,title:'Title 4',type_of:'Nature',category:'landscape',price:100.00)

payment1 = Payment.create(order_id:Order.all.first.id)
payment2 = Payment.create(order_id:Order.all.second.id)
payment3 = Payment.create(order_id:Order.all.third.id)
payment4 = Payment.create(order_id:Order.all.fourth.id)
payment5 = Payment.create(order_id:Order.all.fifth.id)