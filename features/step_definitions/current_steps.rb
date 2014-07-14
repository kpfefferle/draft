Given(/^I am a User$/) do
  # no logic necessary
end

Given(/^there have been (\d+) Picks selected$/) do |num|
  num.to_i.times do
    pick = Pick.next_available
    player = Player.available.sample
    pick.update_attribute(:player_id, player.id)
  end
end

Then(/^I should see the next Pick team$/) do
  expect(page).to have_content(Pick.next_available.team.name)
end

Then(/^I should see the results of the last (\d+) Picks$/) do |num|
  recent_picks = Pick.where("player_id IS NOT NULL").order(order: :desc).limit(num.to_i)
  recent_picks.each do |pick|
    expect(page).to have_content(pick.player.name)
  end
end
