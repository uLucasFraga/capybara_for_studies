# frozen_string_literal: true

# Class who represents LoginPage in SauceDemo
class LoginPage < SitePrism::Page
  element :inpt_user, '#user-name'
  element :inpt_pass, '#password'
  element :btn_login, 'input[value="LOGIN"]'
  element :login_error, 'h3[data-test="error"]'

  def login(user, pass)
    inpt_user.set user
    inpt_pass.set pass
    btn_login.click
  end
end
