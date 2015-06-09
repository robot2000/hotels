require 'rails_helper'

RSpec.describe "hotels/edit", type: :view do
  before(:each) do
    @hotel = assign(:hotel, Hotel.create!(
      :name => "MyString",
      :price => "",
      :number => "",
      :rating => ""
    ))
  end

  it "renders the edit hotel form" do
    render

    assert_select "form[action=?][method=?]", hotel_path(@hotel), "post" do

      assert_select "input#hotel_name[name=?]", "hotel[name]"

      assert_select "input#hotel_price[name=?]", "hotel[price]"

      assert_select "input#hotel_number[name=?]", "hotel[number]"

      assert_select "input#hotel_rating[name=?]", "hotel[rating]"
    end
  end
end
