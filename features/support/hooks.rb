# frozen_string_literal: true

Before do |_feature|
  ## configure the chosen browser
  Capybara.configure do |config|
    config.default_driver = :selenium
  end
end
After do |scenario|
  ## take screenshot if scenario fail
  if scenario.failed?
    folder = 'screenshots/test_screens/'
    file = "#{folder}/#{scenario.name}.png"
    FileUtils.mkdir_p(folder) unless File.exist?(folder)
    page.save_screenshot(file)
  end
end
