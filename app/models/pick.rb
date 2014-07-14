# == Schema Information
#
# Table name: picks
#
#  id         :integer          not null, primary key
#  team_id    :integer
#  round      :integer
#  order      :integer
#  player_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

class Pick < ActiveRecord::Base
  belongs_to :team
  belongs_to :player

  validates :team, presence: true
  validates :round, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :order, presence: true, uniqueness:true, numericality: { only_integer: true, greater_than: 0 }

  scope :ordered, -> { order(:order) }
  scope :next_available_pick, -> { ordered.where("player_id IS NULL").first }
end
