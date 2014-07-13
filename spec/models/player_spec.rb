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

require 'rails_helper'

RSpec.describe Player, :type => :model do

  before(:each) do
    @attr = {
      :name => "Player Name",
      :position => "Position"
    }
  end

  describe "attributes" do

    it "should create a new instance if valid" do
      Player.create!(@attr)
    end

    describe "name" do

      it "should be required" do
        expect(Player.new(@attr.merge(:name => ""))).to_not be_valid
      end
    end

    describe "position" do

      it "should be required" do
        expect(Player.new(@attr.merge(:position => ""))).to_not be_valid
      end
    end
  end
end
