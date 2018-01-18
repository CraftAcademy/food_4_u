Feature: Visitor can go to the cart page to see a list of ordered products and the total price
  As a visitor
  In order to see what I ordered and the total price
  I would like to be able to see a list of all the ordered dishes and total price on the cart page

  Background:
    Given the following restaurants exists
      | name            | description                                      |
      | ThaiTanic       | Thailands finest food, watch out for the iceberg |

    And the following menus exist for "ThaiTanic"
      | name    |
      | Lunch   |

    And the following product categories exist for "Lunch"
      | name    |
      | Pizza   |

    And the following products exist for "Pizza"
      | name       | price  |
      | Margherita | 15     |
      | Hawaii     | 14     |

  Scenario: Visitor can access cart page to see a list of the ordered products and total price
    Given I visit the "ThaiTanic" page
    And I click on "Add to Order" for "Margherita"
    And I click on "Add to Order" for "Hawaii"
    And I click on "Cart" link
    Then I should be redirected to the "Order" page
    And I should see "Ordered Items"
    And I should see "Margherita: 15 kr"
    And I should see "Hawaii: 14 kr"
    And I should see "Subtotal: 130kr"
    And I should see "Delivery fee: 0kr"
    And I should see "Total: 130kr"