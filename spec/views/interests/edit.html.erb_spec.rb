require 'rails_helper'

RSpec.describe "interests/edit", type: :view do
  before(:each) do
    @interest = assign(:interest, Interest.create!(
      :activity_type => "MyString",
      :interest => "MyString",
      :interest_level => "MyString",
      :user => nil
    ))
  end

  it "renders the edit interest form" do
    render

    assert_select "form[action=?][method=?]", interest_path(@interest), "post" do

      assert_select "input#interest_activity_type[name=?]", "interest[activity_type]"

      assert_select "input#interest_interest[name=?]", "interest[interest]"

      assert_select "input#interest_interest_level[name=?]", "interest[interest_level]"

      assert_select "input#interest_user_id[name=?]", "interest[user_id]"
    end
  end
end
