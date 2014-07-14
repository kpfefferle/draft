Feature: View draft results
  As a User
  I want to see the results of the draft by round and by NFL Team
  In order to get a real time update

  Scenario: View draft results by round
    Given I am a User
    And there are Teams, Players, and Picks
    And there have been 3 Picks selected
    When I visit the home page
    Then I should see a link to view results by round
    When I click the link to view results by round
    Then I should see the draft results
