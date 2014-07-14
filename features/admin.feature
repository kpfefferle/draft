Feature: System Administrator records draft picks
  As a System Administrator (don't implement authorization)
  I want to assign a player to a team during the draft period (which is defined by the draft order)
  In order to record the results of the Draft in real-time

  Scenario: Select player with next pick
    Given I am logged in as an Administrator
    And there are Teams, Players, and Picks
    When I visit the home page
    Then I should see a link to record a player selection
    When I click the link to record a player selection
    Then I should see a form to select a player for the next pick
    When I submit the player selection form
    Then I should be on the page to select the next player
    And I should see a confirmation that the previous player was selected
