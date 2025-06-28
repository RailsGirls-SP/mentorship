require 'rails_helper'

RSpec.describe "mentees/new", type: :view do
  before(:each) do
    assign(:mentee, Mentee.new(
      nome: "MyString",
      email: "MyString",
      cargo_atual: "MyString",
      empresa_atual: "MyString",
      mini_bio: "MyText"
    ))
  end

  it "renders new mentee form" do
    render

    assert_select "form[action=?][method=?]", mentees_path, "post" do

      assert_select "input[name=?]", "mentee[nome]"

      assert_select "input[name=?]", "mentee[email]"

      assert_select "input[name=?]", "mentee[cargo_atual]"

      assert_select "input[name=?]", "mentee[empresa_atual]"

      assert_select "textarea[name=?]", "mentee[mini_bio]"
    end
  end
end
