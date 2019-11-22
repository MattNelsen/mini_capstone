User.create(name: "matt", email: "matt@email.com", password: "password")
User.create(name: "jim", email: "jim@email.com", password: "password")
User.create(name: "bill", email: "bill@email.com", password: "password")

Supplier.create(name: "Cabellas", email: "Cabellas@email.com", phone_number: "3424324")
Supplier.create(name: "Sketchers", email: "sketchers@email.com", phone_number: "3424324")
Supplier.create(name: "newbalance", email: "newbalance@email.com", phone_number: "3424324")

Product.create(name: "Camoflauge Boots", price: 105, description: "Nice pair of waterproof boots", supplier_id: 3)
Product.create(name: "Sketchers", price: 65, description: "Skechers GOwalk platform, the Skechers On The GO", supplier_id: 3)
Product.create(name: "Dress shoes", price: 250, description: "Good for all weather and terrain", supplier_id: 3)
Product.create(name: "Athletic shoes", price: 135, description: "Keep up the pace in this running shoe from New Balance.", supplier_id: 1)

Image.create(url: "https://images.cabelas.com/is/image/cabelas/s7_819735_imageset_02?wid=300&hei=230&op_sharpen=1", product_id: 1)
Image.create(url: "https://i5.walmartimages.com/asr/ac787f9f-cc93-4c61-a1a8-87c2df2c4491_1.0d47ba46bd3b275153bc6f9e10f2e9b5.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF", product_id: 2)
Image.create(url: "https://www.hautelookcdn.com/products/R21629201/large/9575282.jpg", product_id: 3)
Image.create(url: "https://images-na.ssl-images-amazon.com/images/I/81GqOq03stL._UL1500_.jpg", product_id: 4)
