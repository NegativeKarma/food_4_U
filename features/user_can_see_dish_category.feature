Feature: Dish categories displayed for visitors
  As a visitor
  In order to help me decide what food to order
  I would like to see dish categories displayed

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

  Scenario: Visitor visits landing page
    Given I visit the "ThaiTanic" page
    Then I should see 'Lunch'
    And I should see 'Dinner'
    And I should see 'Pizza'
