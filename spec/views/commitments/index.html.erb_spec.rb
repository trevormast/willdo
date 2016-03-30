require 'rails_helper'

RSpec.describe "commitments/index", type: :view do
  before(:each) do
    assign(:commitments, [
      Commitment.create!(
        :description => "MyText",
        :tag => "Tag",
        :user => nil
      ),
      Commitment.create!(
        :description => "MyText",
        :tag => "Tag",
        :user => nil
      )
    ])
  end

  it "renders a list of commitments" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Tag".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
