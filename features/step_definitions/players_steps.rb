Then(/^I should see a link to the list of available Players$/) do
  expect(page).to have_link_to_path(players_path)
end

When(/^I click the link to the list of available Players$/) do
  click_link "nav-players"
end

Then(/^I should see the available Players listed$/) do
  Player.available.each do |player|
    expect(page).to have_content(player.name)
  end
end
