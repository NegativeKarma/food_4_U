Feature: Dishes displayed for visitors
  As a visitor
  In order to help me decide what food to order
  I would like to see dishes displayed

  Background:
    Given the following restaurants exists
      | name            | description                                      |
      | ThaiTanic       | Thailands finest food, watch out for the iceberg |
      | Fu King Chinese | Best chinese food in town                        |
    And the following menus exist for "ThaiTanic"
      | name    |
      | Lunch   |
      | Dinner  |
    And the following dish categories exist for "Lunch"
      | name    |
      | Pizza   |
      | Noodles |
    And the following dishes exist for "Pizza"
      | name       | price  |
      | Margherita | 15     |
      | Hawaii     | 14     |

  Scenario: Visitor visits landing page
    Given I visit the "ThaiTanic" page
    Then I should see 'Lunch'
    And I should see 'Pizza'
    And I should see 'Margherita Price: 15'
    And I should see 'Hawaii Price: 14'
    And show me the page
