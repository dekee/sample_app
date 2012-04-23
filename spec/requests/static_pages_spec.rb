require 'spec_helper'

describe "Static pages" do
  	describe "Home page" do
    	it "should have the content 'sample App" do
     	 # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      	#get static_pages_index_path
      	#response.status.should be(200)
  		  	visit '/static_pages/home'
    		page.should have_selector('h1', :text=> 'Sample App')
   		 end

   		 it "should have the title 'Home'" do
   		 	visit '/static_pages/home'
   		 	page.should have_selector('title', :text=>"Ruby on Rails Tutorial Sample App | Home")
   		 end
  	end

    describe "Help page" do 
    	it "should have the content 'Help'" do 
    		visit '/static_pages/help'
    		page.should have_selector("h1", :text=>'Help')
    	end

    	it "Should have the title 'Help'" do 
    		visit '/static_pages/help'
    		page.should have_selector('title', :text=> "Ruby on Rails Tutorial Sample App | Help")
    	end
  	end

  	describe "About page" do 
  		it "Should have the content 'About Us'" do 
  			visit '/static_pages/about'
  			page.should have_selector("h1", :text=>"About Us")
  		end

  		it "Should have the title 'About Us'" do 
  			visit '/static_pages/about'
  			page.should have_selector("title", :text=>"Ruby on Rails Tutorial Sample App | About Us")
  		end
  		
  	end
end