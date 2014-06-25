require 'rails_helper'

RSpec.describe "zoidbergs/new", type: :view do
  next # TODO: uninitialized constant Zoidberg
  before(:each) do
    assign(:zoidberg, Zoidberg.new(
      :name => "MyString"
    ))
  end

  it "renders new zoidberg form" do
    render

    assert_select "form[action=?][method=?]", zoidbergs_path, "post" do

      assert_select "input#zoidberg_name[name=?]", "zoidberg[name]"
    end
  end
end
