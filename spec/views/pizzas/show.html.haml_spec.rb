require 'spec_helper'

describe "pizzas/show" do
  before(:each) do
    @pizza = assign(:pizza, stub_model(Pizza,
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Type/)
  end
end
