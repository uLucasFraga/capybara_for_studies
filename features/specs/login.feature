# language: en
# encode: UTF-8

@regression
Feature: Login in SauceDemo
    - Access the system with multiple valid users
    - Don't access in with invalid users
    - Don't access with unregistered users on the platform
  
  Scenario Outline: Users logged in
      Given the "<user>" with the "<password>" is logged
      Then he can see the products in the list

      Examples:
      | user               | password |
      | STANDARD           | PASSWORD |
      | PROBLEM            | PASSWORD |
      | PERFORMANCE_GLITCH | PASSWORD |
    
    Scenario Outline: Unlogged Users
      Given the "<user>" with the "<password>" is unlogged
      Then he can see the "<error message>" on login

      Examples:
      | user        | password       | error message                                                             |
      | LOCKED_OUT  | PASSWORD       | Epic sadface: Sorry, this user has been locked out.                       |
      | USER_ERROR  | PASSWORD       | Epic sadface: Username and password do not match any user in this service |
      | STANDARD    | ERROR_PASSWORD | Epic sadface: Username and password do not match any user in this service |
      |             | PASSWORD       | Epic sadface: Username is required                                        |
      | STANDARD    |                | Epic sadface: Password is required                                        |