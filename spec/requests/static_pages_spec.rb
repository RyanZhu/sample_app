require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1',:text=>'Sample')
    end
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',:text=>'Home')
    end
  end
  describe "Help Page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
  end
  describe "About Page" do
    it "should have the content 'About'" do
      visit '/static_pages/about'
      page.should have_content('About')
    end
  end
end
