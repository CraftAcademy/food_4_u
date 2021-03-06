@gmap
Feature: Restaurant page reviews
  As a user
  In order to select the best restaurant and also express my opinion
  I would like to see reviews about the restaurant and be able to add a review

  Background:
    Given the following user exists
      | email         | password      | password_confirmation |
      | me@gmail.com  | cutie123      | cutie123              |

    And the following restaurants exists
      | name            | description                                      |
      | ThaiTanic       | Thailands finest food, watch out for the iceberg |
      | Fu King Chinese | Best chinese food in town                        |

    And the following reviews exist for user "me@gmail.com" and restaurant "ThaiTanic"
      | body                                  |
      | Good food, but where is the iceberg?  |
      | I know right, complete rip off!       |

    And I am logged in as "me@gmail.com"

  Scenario: User adds review [Happy Path]
    And I visit the "ThaiTanic" page
    When I fill in "Review" with "Great food, but I did not see Leo!"
    And I click "Add review"
    Then I should see "Review has been successfully added."
    And I should see "Great food, but I did not see Leo!"

  Scenario: User adds review when logged out [Sad Path]
    And I log out
    And I visit the "ThaiTanic" page
    When I fill in "Review" with "Great food, but I did not see Leo!"
    And I click "Add review"
    Then I should be redirected to the "Login" page
    And I should see "You need to sign in or sign up before continuing."

  Scenario: User adds review without a body [Sad Path]
    And I visit the "ThaiTanic" page
    And I click "Add review"
    Then I should see "Body can't be blank"

  Scenario: User can see reviews on restaurant page
    And I visit the "ThaiTanic" page
    Then I should see "Good food, but where is the iceberg?"
    And I should see "I know right, complete rip off!"
