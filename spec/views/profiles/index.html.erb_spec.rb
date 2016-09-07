require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :gender => "Gender",
        :eye_color => "Eye Color",
        :hair_color => "Hair Color",
        :height => "Height",
        :ethnicity => "Ethnicity",
        :user => nil
      ),
      Profile.create!(
        :gender => "Gender",
        :eye_color => "Eye Color",
        :hair_color => "Hair Color",
        :height => "Height",
        :ethnicity => "Ethnicity",
        :user => nil
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "Eye Color".to_s, :count => 2
    assert_select "tr>td", :text => "Hair Color".to_s, :count => 2
    assert_select "tr>td", :text => "Height".to_s, :count => 2
    assert_select "tr>td", :text => "Ethnicity".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
