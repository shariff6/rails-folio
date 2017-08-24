require 'rails_helper'

RSpec.describe "referals/new", type: :view do
  before(:each) do
    assign(:referal, Referal.new())
  end

  it "renders new referal form" do
    render

    assert_select "form[action=?][method=?]", referals_path, "post" do
    end
  end
end
