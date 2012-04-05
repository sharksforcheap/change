require 'spec_helper'

describe Petition do
	before(:each) do
    @attr = { 
      :title => "Hackers locked in room for 3 hours!",
      :description => "All the members of devbootcamp all locked in one room."
    }
  end
  
  it "should create a new instance given a valid attributes" do
    Petition.create!(@attr)
  end


  it "should require an title" do
    no_title_petition = Petition.new(@attr.merge(:title => ""))
    no_title_petition.should_not be_valid
  end
  it "should require an description" do
    no_title_petition = Petition.new(@attr.merge(:description => ""))
    no_title_petition.should_not be_valid
  end


end
