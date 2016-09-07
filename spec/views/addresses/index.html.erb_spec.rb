require 'rails_helper'

RSpec.describe "addresses/index", type: :view do
  before(:each) do
    assign(:addresses, [
      Address.create!(
        :city => "City",
        :state => "State",
        :zip_code => "Zip Code",
        :user => nil
      ),
      Address.create!(
        :city => "City",
        :state => "State",
        :zip_code => "Zip Code",
        :user => nil
      )
    ])
  end

  it "renders a list of addresses" do
    render
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip Code".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
