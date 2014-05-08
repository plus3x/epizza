require 'spec_helper'

describe "pizzas/new" do
  before(:each) do
    assign(:pizza, stub_model(Pizza,
      :type => ""
    ).as_new_record)
  end

  it "renders new pizza form" do
    render

    assert_select "form[action=?][method=?]", pizzas_path, "post" do
      assert_select "input#pizza_type[name=?]", "pizza[type]"
    end
  end
end
