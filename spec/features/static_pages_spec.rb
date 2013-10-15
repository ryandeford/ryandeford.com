require 'spec_helper'

describe 'Static Pages' do
  let(:title_prefix) { 'Ryan DeFord' }
  subject { page }

  describe 'Home Page' do
    before { visit root_path }

    # Make sure the title is set correctly 
    it { should have_title(sprintf('%s | %s', title_prefix, 'Home')) }

    # Make sure the main layout elements are present
    ['body #wrapper',
     'body #wrapper #main-header',
     'body #wrapper #main-navbar',
     'body #wrapper #main-content',
     'body #main-footer'].each do |s|
      it { should have_selector(s) }
    end

    # Make sure the main navigation links are present
    ['Home',
     'Career',
     'Music',
     'Pictures',
     'Games',
     'Art',
     'Fun',
     'About',
     'Contact',
     'Subscribe'].each do |l|
      it { should have_link(l) }
    end

    # Make sure 'RyanDeFord.com' is displayed along with the current year
    ['RyanDeFord.com', Time.now.year].each do |c|
      it { should have_content(c) }
    end
  end
end
