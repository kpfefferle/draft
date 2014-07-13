public

  def clean_string(string)
    string.to_s.gsub!(/\A"|"\Z/, '')
    string.strip
  end

Team.destroy_all
teams_path = File.join(Rails.root, 'db', 'seeds', 'teams.csv')
team_lines = File.open(teams_path).readlines
header = team_lines.shift
team_lines.each do |line|
  values = line.strip.split(',')
  Team.create({
    :name => clean_string(values[0]),
    :division => clean_string(values[1])
  })
end
