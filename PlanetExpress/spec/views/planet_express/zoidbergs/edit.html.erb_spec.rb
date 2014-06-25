require 'rails_helper'

RSpec.describe "zoidbergs/edit", :type => :view do
  next # TODO: fix routing
  before(:each) do
    @zoidberg = assign(:zoidberg, Zoidberg.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit zoidberg form" do
    render

    assert_select "form[action=?][method=?]", zoidberg_path(@zoidberg), "post" do

      assert_select "input#zoidberg_name[name=?]", "zoidberg[name]"
    end
  end
end
