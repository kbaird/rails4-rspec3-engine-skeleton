require 'rails_helper'

RSpec.describe "zoidbergs/show", :type => :view do
  next # TODO: fix routing
  before(:each) do
    @zoidberg = assign(:zoidberg, Zoidberg.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
