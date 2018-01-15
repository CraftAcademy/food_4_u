Feature: A visitor sees a list of the dishes ordered and the total price
  As a visitor
  In order to see what I ordered and the total price
  I would like to be able to see a list of all the ordered dishes and total price on the cart page

  Scenario: Visitor can access cart page to see a list of the ordered dishes and total price
    Given I visit the landing page
    And I click on "Cart" link
    Then I should be redirected to the "Cart" page
    And I should see "Ordered Items"
    And I should see "Pah Thai: 60kr"
    And I should see "Fried rice: 70kr"
    And I should see "Subtotal: 130kr"
    And I should see "Delivery fee: 0kr"
    And I should see "Total: 130kr"



