# frozen_string_literal: true

# !/usr/bin/env ruby
require 'fileutils'

module Helper
  def wait_for_ajax
    Timeout.timeout(Capybara.default_max_wait_time) do
      loop until finished_all_ajax_requests?
    end
  end

  def finished_all_ajax_requests?
    page.evaluate_script('jQuery.active').zero?
  end

  def select_by_value(id, value)
    option_xpath = "//*[@id='#{id}']/option[@value='#{value}']"
    option = find(:xpath, option_xpath).text
    select(option, from: id)
  end

  def mouse_over(element_selector)
    element = Capybara.page.driver.browser.find_element(:css, element_selector)
    Capybara.page.driver.browser.mouse.move_to element
  end
end

RSpec.configure do |config|
  config.include Helper
end
