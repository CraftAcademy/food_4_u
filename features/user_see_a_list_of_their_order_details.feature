Feature: User adds products to an order
  As a visitor
  In order to buy dishes
  I would like to be able to add them to an order

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

  Scenario: Visitor can access cart page to see a list of the ordered dishes and total price
    Given I visit the "ThaiTanic" page
    And I click on "Add to Order" for "Margherita"
    Then I should see "Margherita has been added to your order"
    And An order should have been created in the database
    And "Margherita" should be an order item



