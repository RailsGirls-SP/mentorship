require 'rails_helper'

RSpec.describe "mentees/edit", type: :view do
  let(:mentee) {
    Mentee.create!(
      nome: "MyString",
      email: "MyString",
      cargo_atual: "MyString",
      empresa_atual: "MyString",
      mini_bio: "MyText"
    )
  }

  before(:each) do
    assign(:mentee, mentee)
  end

  it "renders the edit mentee form" do
    render

    assert_select "form[action=?][method=?]", mentee_path(mentee), "post" do

      assert_select "input[name=?]", "mentee[nome]"

      assert_select "input[name=?]", "mentee[email]"

      assert_select "input[name=?]", "mentee[cargo_atual]"

      assert_select "input[name=?]", "mentee[empresa_atual]"

      assert_select "textarea[name=?]", "mentee[mini_bio]"
    end
  end
end
