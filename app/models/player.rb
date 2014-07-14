# == Schema Information
#
# Table name: players
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  position   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Player < ActiveRecord::Base
  has_one :pick
  has_one :team, through: :pick

  validates :name, presence: true
  validates :position, presence: true

  scope :ordered, -> { order(:name) }
  scope :available, -> { ordered.where("NOT EXISTS (SELECT 1 FROM picks WHERE players.id = picks.player_id)") }
  scope :available_by_position, -> { available.reorder(:position, :name) }

  def self.available_for_select
    available.inject([]) do |array, player|
      array << [player.name.to_s, player.id.to_i]
    end
  end
end
