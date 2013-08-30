require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    before { visit root_path }
    subject { page }
    it { should have_content ('Sample App') }
    it { should have_title (full_title('')) }
    it { should_not have_title(full_title('Home')) }
  end


  describe "Help Page" do
    before { visit help_path }
    subject { page }
    it { should have_content ('Help') }
    it { should have_title (full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }
    subject { page }
    it { should have_content ('About') }
    it { should have_title (full_title('About Us')) }
  end

  describe "Contact Page" do
    before { visit contact_path }
    subject { page }
    it { should have_content ('Contact Us') }
    it { should have_title (full_title('Contact Us')) }
  end
end