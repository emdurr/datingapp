require 'rails_helper'

RSpec.describe "interests/new", type: :view do
  before(:each) do
    assign(:interest, Interest.new(
      :activity_type => "MyString",
      :interest => "MyString",
      :interest_level => "MyString",
      :user => nil
    ))
  end

  it "renders new interest form" do
    render

    assert_select "form[action=?][method=?]", interests_path, "post" do

      assert_select "input#interest_activity_type[name=?]", "interest[activity_type]"

      assert_select "input#interest_interest[name=?]", "interest[interest]"

      assert_select "input#interest_interest_level[name=?]", "interest[interest_level]"

      assert_select "input#interest_user_id[name=?]", "interest[user_id]"
    end
  end
end
