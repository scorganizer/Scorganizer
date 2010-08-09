require 'spec_helper'

describe TeamsController do
	fixtures :teams
	describe "#new" do
		it "should render" do
			get :new
			response.should be_success
		end
	end

	describe "#create" do
		describe "with valid data" do
			before do 
				post :create, :team => {:name => 'test'}
			end

			it "should create a new team" do
				Team.find_by_name('test').should_not be_nil
			end
		 end

		describe "with invalid data" do
			
		end
	end

	describe "#update" do 
		describe "with valid data" do
			before do
				@team = teams(:one)
				@team.name.should == "Fixture Team 1"
				put :update, :id => @team.id, :team => {:name => 'new name'}
			end

			it "should update object" do
				@team.reload
				@team.name.should == 'new name'
			end

			it "should redirect to show" do
				response.should redirect_to(:action => @team.id)
			end
		end
	end

	describe "#index" do
		before do 
			get :index
		end

		it "should render" do 
			response.should be_success
		end

		it "should display all the team names" do
			teams.each do |team|
				response.body.should include(team.to_s)
			end
		end
	end

	describe "#show" do
		before do
			get :show, :id => teams(:one).id	
		end
		
		it "should render show" do
			response.should render_template('show')
		end
	end

	describe "#edit" do
		before do
			@team = teams(:one)
			get :edit, :id => @team
		end

		it "should render edit" do
			response.should render_template('edit')
		end

		# not sure why this doesn't work, more time must be spent with this
		xit "should prepopulate with old information" do
			response.body.should include(@team.name)
		end
	end

	describe "#destroy" do
		before do
			@team = teams(:two)
			Team.find_by_id(@team.id).should_not be_nil
			delete :destroy, :id => @team.id
		end

		it "should delete the object" do
			Team.find_by_id(@team.id).should be_nil
		end
	end
end
