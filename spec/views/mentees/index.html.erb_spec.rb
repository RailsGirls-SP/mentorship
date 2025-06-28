require 'rails_helper'

RSpec.describe "mentees/index", type: :view do
  before(:each) do
    assign(:mentees, [
      Mentee.create!(
        nome: "Nome",
        email: "Email",
        cargo_atual: "Cargo Atual",
        empresa_atual: "Empresa Atual",
        mini_bio: "MyText"
      ),
      Mentee.create!(
        nome: "Nome",
        email: "Email",
        cargo_atual: "Cargo Atual",
        empresa_atual: "Empresa Atual",
        mini_bio: "MyText"
      )
    ])
  end

  it "renders a list of mentees" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Nome".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Cargo Atual".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Empresa Atual".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
