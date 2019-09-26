# frozen_string_literal: true

# carts_steps.rb
When('he adds a new product to the cart') do
  @carts_data = JSON.parse(File.read('features/support/config/carts.json'))
  home_page.select_item(@carts_data['backpack'])
  home_page.go_to_cart
end

Then('he can see the new product in the list') do
  @item = cart_page.list_cart_name.text
  expect(@item).to include(@carts_data['backpack'])
end

When('does he remove that new product') do
  cart_page.remove_item(@carts_data['backpack'])
end

Then('he can see the empty cart list') do
  expect(cart_page).to have_no_list_cart_item
end
