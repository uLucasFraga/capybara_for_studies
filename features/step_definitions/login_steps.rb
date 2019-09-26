# frozen_string_literal: true

# login_steps.rb
Given('the {string} with the {string} is logged') do |user, password|
  login_page.visit("#{ENV['SAUCEDEMO']}/")
  login_page.login(ENV[user], ENV[password])
  home_page.wait_until_txt_product_list_visible
  @success = home_page.txt_product_list.text
  expect(@success).to include 'Products'
end

Given('the {string} with the {string} is unlogged') do |user, password|
  login_page.visit("#{ENV['SAUCEDEMO']}/")
  login_page.login(ENV[user], ENV[password])
end

Given('the standard user is logged') do
  login_page.visit("#{ENV['SAUCEDEMO']}/")
  login_page.login(ENV['STANDARD'], ENV['PASSWORD'])
  home_page.wait_until_txt_product_list_visible
  @success = home_page.txt_product_list.text
  expect(@success).to include 'Products'
end
