require 'rails_helper'

RSpec.describe "interests/index", type: :view do
  before(:each) do
    assign(:interests, [
      Interest.create!(
        :activity_type => "Activity Type",
        :interest => "Interest",
        :interest_level => "Interest Level",
        :user => nil
      ),
      Interest.create!(
        :activity_type => "Activity Type",
        :interest => "Interest",
        :interest_level => "Interest Level",
        :user => nil
      )
    ])
  end

  it "renders a list of interests" do
    render
    assert_select "tr>td", :text => "Activity Type".to_s, :count => 2
    assert_select "tr>td", :text => "Interest".to_s, :count => 2
    assert_select "tr>td", :text => "Interest Level".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
