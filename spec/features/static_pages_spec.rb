require 'spec_helper'


feature "Static pages" do

 let(:base_title) { "Ruby on Rails Tutorial Sample App" } 
 
 
  feature "Home page" do
    it "should have the h1 'Sample App'" do
	    visit '/static_pages/home'
	    page.should have_selector('h1', :text => 'Sample App')
    end
	
	def failure_message
          "expected there to be title #{title.inspect} in #{@actual.title.inspect}"
    end
	
	def failure_message_when_negated
          "expected there not to be title #{title.inspect} in #{@actual.title.inspect}"
    end
	
 end
 
 feature "Help page" do
    it "should have the content 'Help'" do
        visit '/static_pages/help'
        page.should have_selector('h1', :text => 'Help')
    end
   
    def failure_message
          "expected there to be title #{title.inspect} in #{@actual.title.inspect}"
    end
	
	def failure_message_when_negated
          "expected there not to be title #{title.inspect} in #{@actual.title.inspect}"
    end
   
 end
 
 feature "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end
	
	def failure_message
          "expected there to be title #{title.inspect} in #{@actual.title.inspect}"
    end
	
	def failure_message_when_negated
          "expected there not to be title #{title.inspect} in #{@actual.title.inspect}"
    end
 end
 
 feature "Contact page" do

    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
    end
	
def failure_message
          "expected there to be title #{title.inspect} in #{@actual.title.inspect}"
    end
	
	def failure_message_when_negated
          "expected there not to be title #{title.inspect} in #{@actual.title.inspect}"
    end
	
 end
 
end
