require 'rails_helper'

RSpec.describe "posts/new", type: :view do
  before(:each) do
    assign(:post, Post.new(
      image_url: "MyString",
      caption: "MyText"
    ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do

      assert_select "input[name=?]", "post[image_url]"

      assert_select "textarea[name=?]", "post[caption]"
    end
  end
end
