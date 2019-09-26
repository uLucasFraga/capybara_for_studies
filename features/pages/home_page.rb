# frozen_string_literal: true

# Class who represents HomePage in SauceDemo
class HomePage < SitePrism::Page
  element :txt_product_list, 'div.product_label'
  element :btn_cart, '#shopping_cart_container'
  elements :inventory_item, '.inventory_item'
  elements :list_all_carts, '.cart_item_label'

  def select_item(name)
    inventory_item.map { |inventory| inventory.find('button[class="btn_primary btn_inventory"]', text: 'ADD TO CART', visible: true).click if inventory.text.include? name }
  end

  def go_to_cart
    btn_cart.click
  end
end
