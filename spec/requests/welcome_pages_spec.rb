require 'spec_helper'

describe "WelcomePages" do
  describe "Home Page" do
    it "should have the content 'mentor.me'" do
      visit '/'
      expect(page).to have_content('Welcome')
    end
  end

  describe "About Page" do
  	it "should have the content 'about'" do
  		visit '/welcome/about'
  		expect(page).to have_content('about')
  	end

  end
end
