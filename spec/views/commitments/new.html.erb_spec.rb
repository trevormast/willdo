require 'rails_helper'

RSpec.describe "commitments/new", type: :view do
  before(:each) do
    assign(:commitment, Commitment.new(
      :description => "MyText",
      :tag => "MyString",
      :user => nil
    ))
  end

  it "renders new commitment form" do
    render

    assert_select "form[action=?][method=?]", commitments_path, "post" do

      assert_select "textarea#commitment_description[name=?]", "commitment[description]"

      assert_select "input#commitment_tag[name=?]", "commitment[tag]"

      assert_select "input#commitment_user_id[name=?]", "commitment[user_id]"
    end
  end
end
