# frozen_string_literal: true

module Pages
  def login_page
    @login_page ||= LoginPage.new
  end

  def home_page
    @home_page ||= HomePage.new
  end

  def cart_page
    @cart_page ||= CartPage.new
  end
end
