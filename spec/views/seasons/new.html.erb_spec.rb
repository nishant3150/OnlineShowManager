require 'rails_helper'

RSpec.describe "seasons/new", type: :view do
  before(:each) do
    assign(:season, Season.new(
      :title => "MyString",
      :plot => "MyText",
      :hd_price => 1.5,
      :sd_price => 1.5
    ))
  end

  it "renders new season form" do
    render

    assert_select "form[action=?][method=?]", seasons_path, "post" do

      assert_select "input[name=?]", "season[title]"

      assert_select "textarea[name=?]", "season[plot]"

      assert_select "input[name=?]", "season[hd_price]"

      assert_select "input[name=?]", "season[sd_price]"
    end
  end
end
