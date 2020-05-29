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


user1 = User.create(first_name:'Johnson',last_name:'Kow',username:'johnsonkow',password:'1234')
user2 = User.create(first_name:'Samantha',last_name:'Ponce',username:'samanthaponce',password:'1234')
user3 = User.create(first_name:'Diana',last_name:'Ponce',username:'dianaponce',password:'1234')
user4 = User.create(first_name:'Caryn',last_name:'Mccarthy',username:'carynmccarthy',password:'1234')
user5 = User.create(first_name:'Jacky',last_name:'Lin',username:'jackylin',password:'1234')
user6 = User.create(first_name:'Joseph',last_name:'Cha',username:'josephcha',password:'1234')


product1 = Product.create(user_id: user5.id, title:'Lady in Dress',type_of:'Nature',category:'landscape, moody, sade, dress, gloomy',price:100, image:'https://www.bleaq.com/wp-content/uploads/katharina-jung-intro.jpg')
product2 = Product.create(user_id: user3.id, title:'Water Paradise',type_of:'Nature',category:'landscape,river,lake,bali,birds,moody',price:50, image:'https://i.pinimg.com/originals/93/c7/43/93c743fe032830d77fd6cda1679a6aac.jpg')
product3 = Product.create(user_id: user2.id, title:'Sam Kolder Iceland',type_of:'Nature',category:'landscape,sam kolder, kold,iceland',price:25, image:'https://i.pinimg.com/originals/ce/73/71/ce7371774f709c1a28a13ffbb61f858b.jpg')
product4 = Product.create(user_id: user1.id, title:'Eerie Nature',type_of:'Nature',category:'landscape, nature, hike, moody, dark',price:100, image:'https://capturelandscapes.com/wp-content/uploads/2017/03/Mists-of-Rivendell-1068x713.jpg')
product5 = Product.create(user_id: user6.id, title:'Reflective',type_of:'Nature',category:'landscape,shortstache,moody,cinematic,mountain',price:75, image:'https://artofvisuals.com/wp-content/uploads/2017/10/@shortstache-4.jpg')
product6 = Product.create(user_id: user5.id, title:'Small but Significant',type_of:'Nature',category:'landscape,shortstache,moody,cinematic,mountain',price:100, image:'https://mygobe.com/media/wysiwyg/infortis/ultimo/custom/Garrett_King_12.jpg')
product7 = Product.create(user_id: user4.id, title:'Im on a boat',type_of:'Nature',category:'landscape,boat,river,lake,nautre,fog,trees',price:70, image:'https://static1.squarespace.com/static/5bcb3fd0815512423060140e/5bcb9d26c1c75eca9eadd56e/5bcb9d7dc1c75eca9eaddd8f/1540070781971/IMG_0862.jpg?format=original')
product8 = Product.create(user_id: user3.id, title:'Sneaks and details',type_of:'City',category:'cityscape, black, white, sneakers',price:100, image:'https://images.squarespace-cdn.com/content/v1/54d85d29e4b00ffa20f50ce0/1455048246635-L0X1D7DHK7S80FWCXA3I/ke17ZwdGBToddI8pDm48kGNKyi2al7VMMTat0PrtpIF7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0m_nwPNs2kYVhoOQZiVFxSZ2kgMUoHnXyC6cwtLZFTJIx0Gfa_TFEzd0zu4Xm4qowg/trashhand-14.jpg')
product9 = Product.create(user_id: user2.id, title:'Stairs',type_of:'City',category:'cityscape, stairs, black, white',price:90, image:'https://images.squarespace-cdn.com/content/v1/5755a35501dbae3c6d1ba03e/1473713710592-7ET780LQ9WA1FWUHDMZD/ke17ZwdGBToddI8pDm48kEpVg-ILAPna1wRh-xAJ9fRZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpwEv36x-EUL2-BSQ5feDhwGCbXuJBFqZ-erYzVouT8yOb9TwqchglLQOCYTRn7ZGxI/trashhand+photography-metal+stairway.jpg')
product10 = Product.create(user_id: user1.id, title:'Japan',type_of:'City',category:'cityscape, city, japan, orange, teal',price:20, image:'https://images.squarespace-cdn.com/content/v1/5567ede4e4b0e2f8eac07860/1499395662220-SIFQAAMI9A3AMEO0BTKU/ke17ZwdGBToddI8pDm48kLkXF2pIyv_F2eUT9F60jBl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iyqMbMesKd95J-X4EagrgU9L3Sa3U8cogeb0tjXbfawd0urKshkc5MgdBeJmALQKw/KOST4066.jpg?format=2500w')
product11 = Product.create(user_id: user1.id, title:'High Way',type_of:'City',category:'cityscape,aerial, city, lights, dark',price:45, image:'https://images.squarespace-cdn.com/content/v1/5567ede4e4b0e2f8eac07860/1477555037698-MROG7PS99VMBL466W67T/ke17ZwdGBToddI8pDm48kLkXF2pIyv_F2eUT9F60jBl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iyqMbMesKd95J-X4EagrgU9L3Sa3U8cogeb0tjXbfawd0urKshkc5MgdBeJmALQKw/IMG_2642-2.jpg?format=2500w')
product12 = Product.create(user_id: user1.id, title:'Day High',type_of:'City',category:'cityscape,train, aerial, dark',price:100, image:'https://66.media.tumblr.com/08497d314288a00868f9b836d02475cb/tumblr_ooo50hZo6G1tqg14lo1_1280.jpg')
product13 = Product.create(user_id: user1.id, title:'Hook Thing',type_of:'Aerial',category:'drone, aerial, mavic, dji, moody, nature',price:80, image:'https://i.pinimg.com/originals/9b/43/d5/9b43d58338b5624d4490561298730545.jpg')
product14 = Product.create(user_id: user1.id, title:'Red Island',type_of:'Aerial',category:'drone,nature, sunset, sunrise, lake, river',price:15, image:'https://i.pinimg.com/originals/c5/ff/e4/c5ffe451441f6c02047920e59607bb41.jpg')
product15 = Product.create(user_id: user1.id, title:'NYC Runner',type_of:'Aerial',category:'drone,dubai, city, aerial, sand, warm',price:10, image:'https://i.pinimg.com/originals/a7/98/6b/a7986b1cd176f76f1315eafd8684b28d.jpg')
product17 = Product.create(user_id: user1.id, title:'Autumn Court',type_of:'Aerial',category:'drone, basketball, court, nyc, manhattan, fall, orange',price:35, image:'https://themorningnews.org/images/made/retina/drone-photos-above-new-york-city-by-humza-deas.jpg')
product18 = Product.create(user_id: user1.id, title:'Gotham City',type_of:'City',category:'cityscape, basketball, court, nyc, manhattan, fall, orange',price:45, image:'https://lh3.googleusercontent.com/proxy/XP13AjHmvQNxBiauU6qu8I5vAex8XwqWZ3z2zfc7hDRiV_EH-x20lKdBy6qHPXmd3Hs5KvQknAz53zWZG01FV_9Hn_o9oK6t45VLjomT-f7A3OQ_STlAhiTnr7mtOg')
product19 = Product.create(user_id: user1.id, title:'ChiTown',type_of:'Aerial',category:'drone, street, chicago, IL, manhattan, fall, orange',price:130, image:'https://66.media.tumblr.com/eafb28000af64ece9bcdbfc74ac02296/tumblr_o7uycwREgp1r44ud4o2_1280.jpg')
product20 = Product.create(user_id: user1.id, title:'Gritty Tracks',type_of:'City',category:'cityscape, train, subway, nyc, manhattan, cold, dark',price:85, image:'https://cqp-media.ams3.cdn.digitaloceanspaces.com/production/wp-content/uploads/2019/10/tumblr_nj84vpWSIu1r44ud4o1_1280-1024x682.jpg')
product21 = Product.create(user_id: user1.id, title:'Natural Beauty',type_of:'Nature',category:'mountains, sunset, shortstache, greenery, winter, orange',price:100, image:'https://66.media.tumblr.com/32ea1d577c1007b712209686c06df99e/tumblr_ospsj3LEF21udqvszo1_1280.jpg')
product22 = Product.create(user_id: user1.id, title:'Monk',type_of:'Nature',category:'animal, monkey, zoo, japan, shortstache',price:235, image:'https://artofvisuals.com/wp-content/uploads/2017/10/@shortstache-2-240x300.jpg?x75633')
product23 = Product.create(user_id: user1.id, title:'Penguins',type_of:'Nature',category:'penguin, zoo, cold, winter, iceland, blue, gloomy',price:25, image:'https://images.squarespace-cdn.com/content/v1/56a569c4b204d5b5c6100b29/1581045305588-VX5YF8VGDCZHGEJ5A8WF/ke17ZwdGBToddI8pDm48kJKo3YTR7zgUvInmXMbZ6zZ7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0geeCvn1f36QDdcifB7yxGjTk-SMFplgtEhJ5kBshkhu5q5viBDDnY2i_eu2ZnquSA/%7BShortstache%7D%7BAntarctica%7D%7BDay7%7D%7B2018%7D85879.jpg?format=1500w')
product24 = Product.create(user_id: user1.id, title:'Giraffe',type_of:'Nature',category:'giraffe, zoo, africa, summer, wildlife, orange',price:200, image:'https://instasize.com/assets/img/garrett-king-shortstache-2.jpg')
product25 = Product.create(user_id: user1.id, title:'Green',type_of:'Aerial',category:'green, nature, woods, forest, upstate, wild, moody, gloomy',price:120, image:'https://i.pinimg.com/originals/f0/df/04/f0df04f2cd48129b84a2ed591bf8b85b.jpg')
product26 = Product.create(user_id: user1.id, title:'Shanghai',type_of:'Aerial',category:'city, urban, drone, aerial, city, asia, moody, sunrise, sunset',price:40, image:'https://mymodernmet.com/wp/wp-content/uploads/2018/03/shanghai-city-photography-mark-siegemund-6.jpg')
product27 = Product.create(user_id: user1.id, title:'Taipei',type_of:'Aerial',category:'city, urban, drone, aerial, city, asia, moody, sunrise, sunset, taipei',price:40, image:'https://i.pinimg.com/originals/49/a7/45/49a745cd8df423dbc062098b83d676b2.jpg')
product28 = Product.create(user_id: user1.id, title:'Hong Kong',type_of:'Aerial',category:'city, urban, drone, aerial, city, asia, moody, sunrise, sunset, hong kong',price:40, image:'https://i.pinimg.com/originals/95/48/9e/95489ed9cd73695e07accaf943e1038a.jpg')
product29 = Product.create(user_id: user1.id, title:'Road in Germany',type_of:'Aerial',category:'city, urban, drone, aerial, city, asia, moody, sunrise, sunset, hong kong',price:40, image:'https://i.redd.it/yrve2t8esd741.jpg')


# product9 = Product.create(user_id: user3.id, title:'Title 7',type_of:'Nature',category:'landscape',price:300, image:'https://mygobe.com/media/wysiwyg/infortis/ultimo/custom/Garrett_King_2.jpg')
# product10 = Product.create(user_id: user2.id, title:'Title 7',type_of:'Nature',category:'landscape',price:100, image:'https://mygobe.com/media/wysiwyg/infortis/ultimo/custom/Garrett_King_3.jpg')
# product11 = Product.create(user_id: user1.id, title:'Title 7',type_of:'Nature',category:'landscape',price:100, image:'https://mygobe.com/media/wysiwyg/infortis/ultimo/custom/Garrett_King_11.jpg')
# product12 = Product.create(user_id: user1.id, title:'Title 7',type_of:'Nature',category:'landscape',price:400, image:'https://mygobe.com/media/wysiwyg/infortis/ultimo/custom/Garrett_King_7.jpg')

order1 = Order.create(confirmation_number: rand(1000...5000),product_id: Product.all.sample.id, user_id: user1.id)
order2 = Order.create(confirmation_number: rand(1000...5000),product_id: Product.all.sample.id, user_id: user2.id)
order3 = Order.create(confirmation_number: rand(1000...5000),product_id: Product.all.sample.id, user_id: user3.id)
order4 = Order.create(confirmation_number: rand(1000...5000),product_id: Product.all.sample.id, user_id: user4.id)
order5 = Order.create(confirmation_number: rand(1000...5000),product_id: Product.all.sample.id, user_id: user5.id)
