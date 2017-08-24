require 'rails_helper'

RSpec.describe "referals/edit", type: :view do
  before(:each) do
    @referal = assign(:referal, Referal.create!())
  end

  it "renders the edit referal form" do
    render

    assert_select "form[action=?][method=?]", referal_path(@referal), "post" do
    end
  end
end
