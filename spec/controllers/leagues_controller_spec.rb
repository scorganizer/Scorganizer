require 'spec_helper'

describe LeaguesController do

	describe "#create" do
		it "should create a new league" do
			old_leagues_count = League.count
			League.create(:name => "testing")
			League.count.should == old_leagues_count + 1
		end
	 end

	describe "#destroy" do
		it "should remove an existing league" do
			previous_count = League.count
			to_be_destroyed = League.create
			League.destroy(to_be_destroyed)
			League.count.should == previous_count
		end
	end
end
