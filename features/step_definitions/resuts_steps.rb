Then(/^I should see a link to view results by round$/) do
  expect(page).to have_link_to_path(picks_path)
end

When(/^I click the link to view results by round$/) do
  click_link "nav-picks"
end

Then(/^I should see the draft results$/) do
  Pick.where("player_id IS NOT NULL").each do |pick|
    expect(page).to have_content(pick.player.name)
  end
end
