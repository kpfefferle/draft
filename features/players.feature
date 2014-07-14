Feature: View available players
  As a User
  I want to be able to view all remaining players alphabetically by position
  In order to see which players are still draftable

  Scenario: View players
    Given I am a User
    And there are Teams, Players, and Picks
    When I visit the home page
    Then I should see a link to the list of available Players
    When I click the link to the list of available Players
    Then I should see the available Players listed
