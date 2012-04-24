require 'spec_helper'

describe "Static pages" do
  	subject {page}
    describe "Home page" do
      before {visit root_path}
    	it {should have_selector('h1', text: 'Sample App')}
     	it {should have_selector('title', :text=>full_title(''))
      it {should_not have_selector('title', text: '| Home')
    end
       # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      	#get static_pages_index_path
      	#response.status.should be(200)
  
  	

    describe "Contact Page" do 
      before {visit contact_path}
      it {should have_selector('h1', text: 'Contact')}
      it {shoudl have_selector('title', text: full_title('Contact'))}

      #it "should have the content 'Contact'" do 
       # visit contact_path
       # page.should have_selector('h1', :text=>'Contact')
      #end

      #it "should have the title 'Contact'" do 
       # visit contact_path
       # page.should have_selector('title', :text=>"Ruby on Rails Tutorial Sample App | Contact")
      #end
    end
    describe "Help page" do 
      before {visit contact_path}
      it {should have_selector("h1", text: 'Help')}
      it {should have_selector("title", text: full_title('Help'))}
    	#it "should have the content 'Help'" do 
    	#	visit help_path
    	#	page.should have_selector("h1", :text=>'Help')
    	#end

#    	it "Should have the title 'Help'" do 
 #   		visit help_path
  #  		page.should have_selector('title', :text=> "Ruby on Rails Tutorial Sample App | Help")
   # 	end
  	end

  	describe "About page" do 
  		before {visit about_path}
      it {should have_selector("h1", text: 'About Us')}
      it {should have_selector("title", text: full_title('About Us'))}  		
  	end
end
