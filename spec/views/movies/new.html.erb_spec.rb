require 'rails_helper'

RSpec.describe "movies/new", type: :view do
  before(:each) do
    assign(:movie, Movie.new(
      :title => "MyString",
      :plot => "MyText",
      :hd_price => 1.5,
      :sd_price => 1.5
    ))
  end

  it "renders new movie form" do
    render

    assert_select "form[action=?][method=?]", movies_path, "post" do

      assert_select "input[name=?]", "movie[title]"

      assert_select "textarea[name=?]", "movie[plot]"

      assert_select "input[name=?]", "movie[hd_price]"

      assert_select "input[name=?]", "movie[sd_price]"
    end
  end
end
