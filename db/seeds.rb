# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
Product.create(product_code: 'CODEMILK001',name: 'MILK',prize:1.12)
Product.create( product_code: 'CODEPIZZA001',name: 'PIZZA',prize:1.24)
Product.create( product_code: 'CODEJUICE001' ,  name: 'JUICE',prize:1.03)
Product.create(product_code: 'CODEWATERMELON001' ,  name: 'WATERMELON',prize:0.56)
user = User.create(name: 'admin', password: 'admin', role_cd:1)
Basket.create(user_id: user.id)