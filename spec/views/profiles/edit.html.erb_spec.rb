require 'rails_helper'

RSpec.describe "profiles/edit", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :gender => "MyString",
      :eye_color => "MyString",
      :hair_color => "MyString",
      :height => "MyString",
      :ethnicity => "MyString",
      :user => nil
    ))
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

      assert_select "input#profile_gender[name=?]", "profile[gender]"

      assert_select "input#profile_eye_color[name=?]", "profile[eye_color]"

      assert_select "input#profile_hair_color[name=?]", "profile[hair_color]"

      assert_select "input#profile_height[name=?]", "profile[height]"

      assert_select "input#profile_ethnicity[name=?]", "profile[ethnicity]"

      assert_select "input#profile_user_id[name=?]", "profile[user_id]"
    end
  end
end
