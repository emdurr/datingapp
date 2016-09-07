require 'rails_helper'

RSpec.describe "interests/show", type: :view do
  before(:each) do
    @interest = assign(:interest, Interest.create!(
      :activity_type => "Activity Type",
      :interest => "Interest",
      :interest_level => "Interest Level",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Activity Type/)
    expect(rendered).to match(/Interest/)
    expect(rendered).to match(/Interest Level/)
    expect(rendered).to match(//)
  end
end
