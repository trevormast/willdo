require 'rails_helper'

RSpec.describe "commitments/show", type: :view do
  before(:each) do
    @commitment = assign(:commitment, Commitment.create!(
      :description => "MyText",
      :tag => "Tag",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Tag/)
    expect(rendered).to match(//)
  end
end
