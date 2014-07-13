public

  def csv_lines(file)
    csv_path = File.join(Rails.root, 'db', 'seeds', "#{file}.csv")
    lines = File.open(csv_path).readlines
    header = lines.shift
    lines
  end

  def clean_string(string)
    string.to_s.gsub!(/\A"|"\Z/, '')
    string.strip
  end

Team.destroy_all
csv_lines('teams').each do |line|
  values = line.strip.split(',')
  Team.create({
    :name => clean_string(values[0]),
    :division => clean_string(values[1])
  })
end

Pick.destroy_all
csv_lines('order').each do |line|
  values = line.strip.split(',')
  team = Team.find_by_name(clean_string(values[2]))
  Pick.create({
    :team => team,
    :round => values[0].to_i,
    :order => values[1].to_i
  })
end

Player.destroy_all
csv_lines('players').each do |line|
  values = line.strip.split(',')
  Player.create({
    :name => clean_string(values[0]),
    :position => clean_string(values[1])
  })
end
