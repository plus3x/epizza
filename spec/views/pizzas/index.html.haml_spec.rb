require 'spec_helper'

describe "pizzas/index" do
  before(:each) do
    assign(:pizzas, [
      stub_model(Pizza,
        :type => "Type"
      ),
      stub_model(Pizza,
        :type => "Type"
      )
    ])
  end

  it "renders a list of pizzas" do
    render
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
