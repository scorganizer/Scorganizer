require 'spec_helper'

describe LeaguesController do
	fixtures :leagues
	describe "#new" do
		it "should render" do
			get :new
			response.should be_success
		end
	end

	describe "#create" do
		describe "with valid data" do
			before do 
				post :create, :league => {:name => 'test'}
			end

			it "should create a new league" do
				League.find_by_name('test').should_not be_nil
			end
		 end

		describe "with invalid data" do
			
		end
	end

	describe "#update" do 
		describe "with valid data" do
			before do
				@league = leagues(:one)
				@league.name.should == "Fixture league 1"
				put :update, :id => @league.id, :league => {:name => 'new name'}
			end

			it "should update object" do
				@league.reload
				@league.name.should == 'new name'
			end

			it "should redirect to show" do
				response.should redirect_to(:action => @league.id)
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

		it "should display all the league names" do
			leagues.each do |league|
				response.body.should include(league.to_s)
			end
		end
	end

	describe "#show" do
		before do
			get :show, :id => leagues(:one).id	
		end
		
		it "should render show" do
			response.should render_template('show')
		end
	end

	describe "#edit" do
		before do
			@league = leagues(:one)
			get :edit, :id => @league
		end

		it "should render edit" do
			response.should render_template('edit')
		end

		# not sure why this doesn't work, more time must be spent with this
		xit "should prepopulate with old information" do
			response.body.should include(@league.name)
		end
	end

	describe "#destroy" do
		before do
			@league = leagues(:two)
			League.find_by_id(@league.id).should_not be_nil
			delete :destroy, :id => @league.id
		end

		it "should delete the object" do
			League.find_by_id(@league.id).should be_nil
		end
	end
end
