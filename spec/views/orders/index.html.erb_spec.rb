require 'spec_helper'

describe "orders/index" do
  before(:each) do
    assign(:orders, [
      stub_model(Order,
        :name => "Name",
        :email => "Email",
        :phone => "Phone"
      ),
      stub_model(Order,
        :name => "Name",
        :email => "Email",
        :phone => "Phone"
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
  end
end
