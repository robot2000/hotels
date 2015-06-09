require 'rails_helper'

RSpec.describe "hotels/index", type: :view do
  before(:each) do
    assign(:hotels, [
      Hotel.create!(
        :name => "Name",
        :price => "",
        :number => "",
        :rating => ""
      ),
      Hotel.create!(
        :name => "Name",
        :price => "",
        :number => "",
        :rating => ""
      )
    ])
  end

  it "renders a list of hotels" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
