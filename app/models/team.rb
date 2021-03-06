# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  division   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Team < ActiveRecord::Base
  has_many :picks
  has_many :players, through: :picks

  validates :name, presence: true, uniqueness: true
  validates :division, presence: true

  scope :ordered, -> { order(:name) }
end
