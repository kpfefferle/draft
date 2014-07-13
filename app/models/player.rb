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
end
