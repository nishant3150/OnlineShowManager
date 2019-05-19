require 'rails_helper'

RSpec.describe "movies/edit", type: :view do
  before(:each) do
    @movie = assign(:movie, Movie.create!(
      :title => "MyString",
      :plot => "MyText",
      :hd_price => 1.5,
      :sd_price => 1.5
    ))
  end

  it "renders the edit movie form" do
    render

    assert_select "form[action=?][method=?]", movie_path(@movie), "post" do

      assert_select "input[name=?]", "movie[title]"

      assert_select "textarea[name=?]", "movie[plot]"

      assert_select "input[name=?]", "movie[hd_price]"

      assert_select "input[name=?]", "movie[sd_price]"
    end
  end
end
