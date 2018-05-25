@time

Feature: User is able to convert Time units

  Background:
    Given I click on Got it button
    And I land on Area screen


  Scenario Outline:
    Given I swipe in the menu
    And I select "Time" from menu
    When I select "<left>" from left column
    And I select "<right>" from right column
    And I click on Clear button
    And I click on From field
    And I press "<value>" on soft keyboard
    Then I get "<target>" in To field

    Examples:
      | left   | right       | value | target |
      | Year   | Month       | 1     | 12     |
      | Day    | Hour        | 2     | 48     |
      | Second | Millisecond | 5     | 5000   |