# CAPYBARA-RUBY-FOR-BEGINNERS

### SUMMARY

Repository with examples of automation using capybara + cucumber + siteprims + rspec

> [Capybara](https://github.com/teamcapybara/capybara):
Helps you test web applications by simulating how a real user would interact with your app. It is agnostic about the driver running your tests and comes with Rack::Test and Selenium support built in. WebKit is supported through an external gem.

> [Cucumber](https://github.com/cucumber/cucumber):
Is a tool that supports Behaviour-Driven Development (BDD) - a software development process that aims to enhance software quality and reduce maintenance costs.

> [RSpec](https://github.com/rspec):
Tests are not just scripts that verify your application code. They’re also specifications (or specs, for short): detailed explanations of how the application is supposed to behave, expressed in plain English.

> [SitePrism](https://github.com/site-prism/site_prism):
Gives you a simple, clean and semantic DSL for describing your site using the Page Object Model pattern, for use with Capybara in automated acceptance testing.

---

## Table of Contents

> Índice `README`.

- [Prerequisites](#prerequisites)
- [Configuration](#configuration)
- [Installation](#installation)
- [Features](#features)
- [How to run tests](#how-to-run-tests)
- [Run tests](#run-tests)
- [Support](#support)

---

## Prerequisites

- [Ruby](https://www.ruby-lang.org/en/documentation/installation/)
- [Bundler](https://bundler.io/)
- [VSCode](https://code.visualstudio.com/)
- [Gemfile](https://tosbourn.com/what-is-the-gemfile/)
- [Chromedriver](https://chromedriver.chromium.org/)
- [Geckodriver](https://github.com/mozilla/geckodriver/releases)

## Configuration
> iOS: 

Update ruby version (if required)
- [Ruby](https://www.engineyard.com/blog/how-to-install-ruby-on-a-mac-with-chruby-rbenv-or-rvm)
Install homebrew
- [Homebrew](https://brew.sh/)
Install chromedriver
- [Chromedriver](https://www.kenst.com/2015/03/installing-chromedriver-on-mac-osx/)
Install geckodriver
- [Geckodriver](https://www.kenst.com/2016/12/installing-marionette-firefoxdriver-on-mac-osx/)

> Windows:

Install chocolatey
- [Chocolatey](https://chocolatey.org/)
Install ruby
- [Ruby via chocolatey](https://chocolatey.org/packages?q=ruby)
Install devkit
- [DevKit via chocolatey](https://chocolatey.org/packages?q=DevKit)
Install chromedriver
- [Chromedriver via chocolatey](https://chocolatey.org/packages/selenium-chrome-driver)
Install geckodriver
- [Geckodriver via chocolatey](https://chocolatey.org/packages/selenium-gecko-driver)

> Ubuntu:

Install rbenv
- [Rbenv](https://makandracards.com/makandra/28149-installing-rbenv-on-ubuntu)
Install ruby
- [Ruby](https://linuxize.com/post/how-to-install-ruby-on-ubuntu-18-04/#installing-ruby-using-rbenv)
Install chromedriver
- [Chromedriver via ubuntu](https://tecadmin.net/setup-selenium-chromedriver-on-ubuntu/)
Install geckodriver
- [Geckodriver via ubuntu](https://askubuntu.com/questions/870530/how-to-install-geckodriver-in-ubuntu)


## Installation

> Clone
- Clone this repo to your local machine using `https://github.com/uLucasFraga/capybara_for_beginners.git`

- Install all dependencies (Gemfile)
`bundle install`

![Bundle install example](http://g.recordit.co/YX7Ztyd7XT.gif)

> Tips

- Use Gemfile to install the project dependencies

## Features
- file example `.feature`

```gherkin
# language: en
# encode: UTF-8

Feature: Add or remove a new product to cart
    - Add a new product to cart
    - Remove a product from the cart

    Background: Standard user login
        Given the standard user is logged

    Scenario: Add a new product for your cart
        When he adds a new product to the cart
        Then he can see the new product in the list
```

## How to run tests

> create and configure file *.env*

- Create file `.evn` in `/capybara_ruby_for_beginners`
- Configure file `.env` with:

> example:
```
SAUCEDEMO=https://www.saucedemo.com
STANDARD=standard_user
LOCKED_OUT=locked_out_user
PROBLEM=problem_user
PERFORMANCE_GLITCH=performance_glitch_user
USER_ERROR=error_login_user
PASSWORD=secret_sauce
ERROR_PASSWORD=sauce_secret
```

## Run tests

> run all tests with the bundle

```shell
$ bundle exec cucumber
```

> run tests with chrome, firefox or chrome_headless

```shell
$ bundle exec cucumber -p chrome
$ bundle exec cucumber -p firefox
$ bundle exec cucumber -p chrome_headless
```

> run tests with chrome, firefox or chrome_headless + tag

```shell
$ bundle exec cucumber -p chrome -t @regression
$ bundle exec cucumber -p firefox -t @regression
$ bundle exec cucumber -p chrome_headless -t @regression
```

> run tests with the cucumber

```shell
$ cucumber
```

## Support

- Twitter at <a href="https://twitter.com/uLucasFraga" target="_blank">`@ulucasfraga`</a>
- Facebook at <a href="https://www.facebook.com/lucass.fragaa" target="_blank">`Facebook: Lucas Fraga`</a>
- Linkedin at <a href="https://www.linkedin.com/in/ulucasfraga" target="_blank">`Linkedin: Lucas Fraga`</a>

- E-mail: `lucass.fragaa@gmail.com`
- Skype: `live:lucass.fragaa`

---

## License

[![License](http://img.shields.io/:license-mit-blue.svg?style=flat-square)](http://badges.mit-license.org)

- **[MIT license](http://opensource.org/licenses/mit-license.php)**
- Copyright 2018 © <a href="https://www.linkedin.com/in/ulucasfraga" target="_blank">Lucas Fraga</a>.