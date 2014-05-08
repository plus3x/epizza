require 'spec_helper'

describe "pizzas/edit" do
  before(:each) do
    @pizza = assign(:pizza, stub_model(Pizza,
      :type => ""
    ))
  end

  it "renders the edit pizza form" do
    render

    assert_select "form[action=?][method=?]", pizza_path(@pizza), "post" do
      assert_select "input#pizza_type[name=?]", "pizza[type]"
    end
  end
end
