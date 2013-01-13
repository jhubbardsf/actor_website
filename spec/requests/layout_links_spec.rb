require 'spec_helper'

describe "LayoutLinks" do

  it "should have the correct Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Iris McLean")
    response.should have_selector('img', :alt => "Iris McLean Headshot")
  end

  it "should have the correct Biography page at '/bio'" do
    get '/bio'
    response.should have_selector('title', :content => "Biography")
    response.should have_selector('img', :alt => "Iris McLean Headshot 2")
  end

  it "should have the correct Latest News page at '/news'" do
    get '/news'
    response.should have_selector('title', :content => "Latest News")
  end

  it "should have the correct Photos page at '/photos'" do
    get '/photos'
    response.should have_selector('title', :content => "Photos")
  end

  it "should have the correct Videos page at '/videos'" do
    get '/videos'
    response.should have_selector('title', :content => "Videos")
  end

  it "should have the correct Resume page at '/resume'" do
    get '/resume'
    response.should have_selector('title', :content => "Resume")
  end

  it "should have the correct Links page at '/links'" do
    get '/links'
    response.should have_selector('title', :content => "Links")
  end

  it "should have the right links on the main layout" do
    visit root_path
    click_link "Biography"
    response.should have_selector('title', :content => "Biography")
    click_link "Latest News"
    response.should have_selector('title', :content => "Latest News")
    click_link "Photos"
    response.should have_selector('title', :content => "Photos")
    click_link "Videos"
    response.should have_selector('title', :content => "Videos")
    click_link "Resume"
    response.should have_selector('title', :content => "Resume")
    click_link "Links"
    response.should have_selector('title', :content => "Links")
  end

end
