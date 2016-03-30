require 'rails_helper'

RSpec.describe "commitments/edit", type: :view do
  before(:each) do
    @commitment = assign(:commitment, Commitment.create!(
      :description => "MyText",
      :tag => "MyString",
      :user => nil
    ))
  end

  it "renders the edit commitment form" do
    render

    assert_select "form[action=?][method=?]", commitment_path(@commitment), "post" do

      assert_select "textarea#commitment_description[name=?]", "commitment[description]"

      assert_select "input#commitment_tag[name=?]", "commitment[tag]"

      assert_select "input#commitment_user_id[name=?]", "commitment[user_id]"
    end
  end
end
