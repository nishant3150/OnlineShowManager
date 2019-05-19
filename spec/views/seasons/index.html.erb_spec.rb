require 'rails_helper'

RSpec.describe "seasons/index", type: :view do
  before(:each) do
    assign(:seasons, [
      Season.create!(
        :title => "Title",
        :plot => "MyText",
        :hd_price => 2.5,
        :sd_price => 3.5
      ),
      Season.create!(
        :title => "Title",
        :plot => "MyText",
        :hd_price => 2.5,
        :sd_price => 3.5
      )
    ])
  end

  it "renders a list of seasons" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
  end
end
