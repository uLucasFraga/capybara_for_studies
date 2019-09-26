# frozen_string_literal: true

# commons_steps.rb
Then('he can see the products in the list') do
  expect(home_page).to have_inventory_item
end

Then('he can see the {string} on login') do |message|
  @unsuccess = login_page.login_error.text
  expect(@unsuccess).to include(message)
end
