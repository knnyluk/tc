require 'spec_helper'

describe "StaticPages" do

  subject { page }
	
  describe "Home page", :type => :feature do
    before { visit root_path }

    it { should have_content('Home page')}
    it { should have_title("base title | home")}
		# it "should have the content 'Home page'" do
		# 	expect(page).to have_content('Home page')
		# end
		# it "should have the base title" do
		# 	expect(page).to have_title("base title | home")
		# end
	end

	describe "Help page", :type => :feature do
    before { visit help_path }

    it { should have_content('help') }
    it { should have_title("base title | help") }
	end

	describe "About page", :type => :feature do
    before { visit about_path }

    it { should have_content('About Us')}
    it { should have_title("base title | about")}
  end

  describe "Contact page", :type => :feature do
    before { visit contact_path }

    it { should have_content('Contact')}
    it { should have_title('base title | Contact')}
  end

  describe "GET /static_pages" do
    xit "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get static_pages_home_path
      response.status.should be(200)
    end
  end
end
