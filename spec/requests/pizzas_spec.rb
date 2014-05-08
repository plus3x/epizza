require 'spec_helper'

describe "Pizzas" do
  describe "GET /pizzas" do
    it "works! (now write some real specs)" do
      get pizzas_path
      expect(response.status).to be(200)
    end
  end
end
