require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      image_url: "MyString",
      caption: "MyText"
    ))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "input[name=?]", "post[image_url]"

      assert_select "textarea[name=?]", "post[caption]"
    end
  end
end
