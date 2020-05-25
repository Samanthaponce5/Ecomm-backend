# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Product.destroy_all
Order.destroy_all

# samantha = User.create(first_name: 'Samantha',last_name:'Ponce',username:'samanthaponce', password:'password')


user1 = User.create(first_name:'johnson',last_name:'kow',username:'johnsonkow',password:'1234')
user2 = User.create(first_name:'samantha',last_name:'ponce',username:'samanthaponce',password:'1234')
user3 = User.create(first_name:'diana',last_name:'ponce',username:'dianaponce',password:'1234')
user4 = User.create(first_name:'caryn',last_name:'mccarthy',username:'carynmccarthy',password:'1234')
user5 = User.create(first_name:'jacky',last_name:'lin',username:'jackylin',password:'1234')
user6 = User.create(first_name:'joseph',last_name:'cha',username:'josephcha',password:'1234')

product1 = Product.create(user_id: user5.id, title:'Title 1',type_of:'Nature',category:'landscape',price:100.00, image:'https://www.bleaq.com/wp-content/uploads/katharina-jung-intro.jpg')
product2 = Product.create(user_id: user4.id, title:'Title 2',type_of:'Nature',category:'landscape',price:100.00, image:'https://moody-presets.com/wp-content/uploads/2018/01/naturel-moody-after-3.jpg')
product3 = Product.create(user_id: user3.id, title:'Title 3',type_of:'Nature',category:'landscape',price:100.00, image:'https://i.pinimg.com/originals/93/c7/43/93c743fe032830d77fd6cda1679a6aac.jpg')
product4 = Product.create(user_id: user2.id, title:'Title 4',type_of:'Nature',category:'landscape',price:100.00, image:'https://i.pinimg.com/originals/ce/73/71/ce7371774f709c1a28a13ffbb61f858b.jpg')
product5 = Product.create(user_id: user1.id, title:'Title 5',type_of:'Nature',category:'landscape',price:100.00, image:'https://capturelandscapes.com/wp-content/uploads/2017/03/Mists-of-Rivendell-1068x713.jpg')
product6 = Product.create(user_id: user6.id, title:'Title 6',type_of:'Nature',category:'landscape',price:100.00, image:'https://artofvisuals.com/wp-content/uploads/2017/10/@shortstache-4.jpg')
product7 = Product.create(user_id: user5.id, title:'Title 7',type_of:'Nature',category:'landscape',price:100.00, image:'https://mygobe.com/media/wysiwyg/infortis/ultimo/custom/Garrett_King_12.jpg')
product8 = Product.create(user_id: user4.id, title:'Title 7',type_of:'Nature',category:'landscape',price:100.00, image:'https://static1.squarespace.com/static/5bcb3fd0815512423060140e/5bcb9d26c1c75eca9eadd56e/5bcb9d7dc1c75eca9eaddd8f/1540070781971/IMG_0862.jpg?format=original')
product9 = Product.create(user_id: user3.id, title:'Title 7',type_of:'Nature',category:'landscape',price:100.00, image:'https://mygobe.com/media/wysiwyg/infortis/ultimo/custom/Garrett_King_2.jpg')
product10 = Product.create(user_id: user2.id, title:'Title 7',type_of:'Nature',category:'landscape',price:100.00, image:'https://mygobe.com/media/wysiwyg/infortis/ultimo/custom/Garrett_King_3.jpg')
product11 = Product.create(user_id: user1.id, title:'Title 7',type_of:'Nature',category:'landscape',price:100.00, image:'https://mygobe.com/media/wysiwyg/infortis/ultimo/custom/Garrett_King_11.jpg')
product12 = Product.create(user_id: user1.id, title:'Title 7',type_of:'Nature',category:'landscape',price:100.00, image:'https://mygobe.com/media/wysiwyg/infortis/ultimo/custom/Garrett_King_7.jpg')

order1 = Order.create(confirmation_number: rand(1000...5000),product_id: Product.all.sample.id, user_id: user1.id)
order2 = Order.create(confirmation_number: rand(1000...5000),product_id: Product.all.sample.id, user_id: user2.id)
order3 = Order.create(confirmation_number: rand(1000...5000),product_id: Product.all.sample.id, user_id: user3.id)
order4 = Order.create(confirmation_number: rand(1000...5000),product_id: Product.all.sample.id, user_id: user4.id)
order5 = Order.create(confirmation_number: rand(1000...5000),product_id: Product.all.sample.id, user_id: user5.id)
