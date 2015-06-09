require 'rails_helper'

RSpec.describe "hotels/new", type: :view do
  before(:each) do
    assign(:hotel, Hotel.new(
      :name => "MyString",
      :price => "",
      :number => "",
      :rating => ""
    ))
  end

  it "renders new hotel form" do
    render

    assert_select "form[action=?][method=?]", hotels_path, "post" do

      assert_select "input#hotel_name[name=?]", "hotel[name]"

      assert_select "input#hotel_price[name=?]", "hotel[price]"

      assert_select "input#hotel_number[name=?]", "hotel[number]"

      assert_select "input#hotel_rating[name=?]", "hotel[rating]"
    end
  end
end
