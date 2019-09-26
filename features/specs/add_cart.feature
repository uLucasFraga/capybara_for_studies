# language: en
# encode: UTF-8

@regression
Feature: Add or remove a new product to cart
    - Add a new product to cart
    - Remove a product from the cart

    Background: Standard user login
        Given the standard user is logged

    Scenario: Add a new product for your cart
        When he adds a new product to the cart
        Then he can see the new product in the list

    Scenario: Remove a new product for your cart
        Given he adds a new product to the cart
        When does he remove that new product
        Then he can see the empty cart list