task :draft => :environment do
  puts "Simulating draft..."

  Pick.ordered.each do |pick|
    player = Player.available.sample
    pick.update_attribute(:player_id, player.id)
    puts "With the #{pick.order.ordinalize} pick in the 2010 NFL Draft, the #{pick.team.name} select #{player.position} #{player.name}."
  end

  puts "Draft complete."
end
