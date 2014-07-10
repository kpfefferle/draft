require 'rails_helper'

RSpec.describe Team, :type => :model do

  before(:each) do
    @attr = {
      :name => "Team Name",
      :division => "Division Name"
    }
  end

  describe "attributes" do

    it "should create a new instance if valid" do
      Team.create!(@attr)
    end

    describe "name" do

      it "should be required" do
        expect(Team.new(@attr.merge(:name => ""))).to_not be_valid
      end

      it "should be rejected if duplicate" do
        Team.create!(@attr)
        expect(Team.new(@attr)).to_not be_valid
      end
    end
  end
end
