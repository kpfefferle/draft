FactoryGirl.define do

  factory :pick do
    team
    round 1
    sequence(:order) { |n| n }
  end

  factory :player do
    sequence(:name) { |n| "Player #{n}" }
    position { %w(QB RB WR).sample }
  end

  factory :team do
    sequence(:name) { |n| "Team #{n}" }
    division "Division"
  end
end
