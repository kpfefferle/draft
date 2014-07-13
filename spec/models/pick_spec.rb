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

require 'rails_helper'

RSpec.describe Pick, :type => :model do

  before(:each) do
    @team = FactoryGirl.create(:team)
    @attr = {
      :team => @team,
      :round => 1,
      :order => 1
    }
  end

  it "should create a new instance if valid" do
    Pick.create!(@attr)
  end

  describe "attributes" do

    describe "team" do

      it "should be required" do
        expect(Pick.new(@attr.merge(:team => nil))).to_not be_valid
      end
    end

    describe "round" do

      it "should be required" do
        expect(Pick.new(@attr.merge(:round => nil))).to_not be_valid
      end

      it "should be accepted if integer" do
        (1..5).to_a.each do |round|
          expect(Pick.new(@attr.merge(:round => round))).to be_valid
        end
      end

      it "should be rejected if not integer" do
        [2.5,"string",[3]].each do |round|
          expect(Pick.new(@attr.merge(:round => round))).to_not be_valid
        end
      end

      it "should be rejected if less than 1" do
        [-2..0].each do |round|
          expect(Pick.new(@attr.merge(:round => round))).to_not be_valid
        end
      end
    end

    describe "order" do

      it "should be required" do
        expect(Pick.new(@attr.merge(:order => nil))).to_not be_valid
      end

      it "should be accepted if integer" do
        (1..5).to_a.each do |order|
          expect(Pick.new(@attr.merge(:order => order))).to be_valid
        end
      end

      it "should be rejected if not integer" do
        [2.5,"string",[3]].each do |order|
          expect(Pick.new(@attr.merge(:order => order))).to_not be_valid
        end
      end

      it "should be rejected if less than 1" do
        [-2..0].each do |order|
          expect(Pick.new(@attr.merge(:order => order))).to_not be_valid
        end
      end

      it "should be rejected if duplicate" do
        Pick.create!(@attr)
        expect(Pick.new(@attr)).to_not be_valid
      end
    end
  end
end
