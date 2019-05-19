require 'rails_helper'

RSpec.describe "seasons/edit", type: :view do
  before(:each) do
    @season = assign(:season, Season.create!(
      :title => "MyString",
      :plot => "MyText",
      :hd_price => 1.5,
      :sd_price => 1.5
    ))
  end

  it "renders the edit season form" do
    render

    assert_select "form[action=?][method=?]", season_path(@season), "post" do

      assert_select "input[name=?]", "season[title]"

      assert_select "textarea[name=?]", "season[plot]"

      assert_select "input[name=?]", "season[hd_price]"

      assert_select "input[name=?]", "season[sd_price]"
    end
  end
end
