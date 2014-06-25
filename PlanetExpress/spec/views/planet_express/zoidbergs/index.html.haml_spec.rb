require 'rails_helper'

RSpec.describe "zoidbergs/index", type: :view do
  next # TODO: uninitialized constant Zoidberg
  before(:each) do
    assign(:zoidbergs, [
      Zoidberg.create!(
        :name => "Name"
      ),
      Zoidberg.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of zoidbergs" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
