Category.create!(
  [
    { title: 'First course' },
    { title: 'Main course' },
    { title: 'Drink' }
  ]
)

Dish.create!(
  [
    { title: 'French fries', description: 'omnomnom potatoes', price: 100, category_id: 2},
    { title: 'Carbonara', description: 'pasta pasta pasta', price: 346, category_id: 2},
    { title: 'Pizza Margarita', description: 'wow pizza', price: 400, category_id: 2},
    { title: 'Sushi', description: 'Why not?', price: 250, category_id: 2},
    { title: 'Chicken soup', description: 'soup, not soap', price: 150, category_id: 1},
    { title: 'Tomato soup', description: 'only fresh tomatoes', price: 140, category_id: 1},
    { title: 'Gulash', description: 'What is it?', price: 99, category_id: 1},
    { title: 'Okroshka', description: 'I thought it was a salad', price: 135, category_id: 1},
    { title: 'Tea with mint', description: 'or mint with tea', price: 90, category_id: 3},
    { title: 'Green tea', description: 'the greenest of the green teas', price: 90, category_id: 3},
    { title: 'Coffee Latte', description: 'my favourite', price: 150, category_id: 3},
    { title: 'Matcha Latte', description: 'Not tea, not coffe...', price: 89, category_id: 3}
  ]
)

User.create!(
  [
    {name: 'Bilbo Baggins', email: 'bilbo_b@bla.com', password: '123456'},
    {name: 'Smeagol', email: 'gollum_gollum@bla.com', password: '123456'},
    {name: 'Gandalf the Grey', email: 'gandalf_wizard@bla.com', password: 'youshallnotpass'}
  ]
)

# order = current_user.orders.new
# dish_1 = Dish.find params[:dish_2_id]
# dish_2 = Dish.find params[:dish_2_id]

# order.dishes.push(dish_1, dish_2)
# order.total_price = order.dishes.inject(0) { |sum, dish| sum + dish.price }

# if order.save
#   redirect_to root_path
# else
#   render :new
# end
