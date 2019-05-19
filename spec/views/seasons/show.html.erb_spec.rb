require 'rails_helper'

RSpec.describe "seasons/show", type: :view do
  before(:each) do
    @season = assign(:season, Season.create!(
      :title => "Title",
      :plot => "MyText",
      :hd_price => 2.5,
      :sd_price => 3.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
  end
end
