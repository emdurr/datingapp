require 'rails_helper'

RSpec.describe "profiles/show", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :gender => "Gender",
      :eye_color => "Eye Color",
      :hair_color => "Hair Color",
      :height => "Height",
      :ethnicity => "Ethnicity",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/Eye Color/)
    expect(rendered).to match(/Hair Color/)
    expect(rendered).to match(/Height/)
    expect(rendered).to match(/Ethnicity/)
    expect(rendered).to match(//)
  end
end
