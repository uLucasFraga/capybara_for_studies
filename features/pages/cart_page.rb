# frozen_string_literal: true

# Class who represents CartPage Page in SauceDemo
class CartPage < SitePrism::Page
  element :list_cart_name, '.inventory_item_name'
  element :list_cart_item, '.cart_item'

  def remove_item(name)
    find('button[class="btn_secondary cart_button"]', text: 'REMOVE', visible: true).click if list_cart_name.text.include?(name)
  end
end
