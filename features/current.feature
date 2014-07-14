Feature: Current draft status
  As a User
  I want to see the latest 3 picks and which team is next to pick
  In order to see only what is actively happening

  Scenario: View current draft status
    Given I am a User
    And there are Teams, Players, and Picks
    And there have been 3 Picks selected
    When I visit the home page
    Then I should see the next Pick team
    And I should see the results of the last 3 Picks
