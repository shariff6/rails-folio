require 'rails_helper'

RSpec.describe "referals/show", type: :view do
  before(:each) do
    @referal = assign(:referal, Referal.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
