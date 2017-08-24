require 'rails_helper'

RSpec.describe "referals/index", type: :view do
  before(:each) do
    assign(:referals, [
      Referal.create!(),
      Referal.create!()
    ])
  end

  it "renders a list of referals" do
    render
  end
end
