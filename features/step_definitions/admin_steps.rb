Given(/^I am logged in as an Administrator$/) do
  # not implementing authorization yet
end

When(/^I visit the home page$/) do
  visit root_path
end

Then(/^I should see a link to record a player selection$/) do
  expect(page).to have_link_to_path(edit_pick_path(Pick.next_available_pick))
end

When(/^I click the link to record a player selection$/) do
  click_link "nav-admin"
end

Then(/^I should see a form to select a player for the next pick$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I submit the player selection form$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should be on the page to select the next player$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see a confirmation that the previous player was selected$/) do
  pending # express the regexp above with the code you wish you had
end
