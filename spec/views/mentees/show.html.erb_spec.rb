require 'rails_helper'

RSpec.describe "mentees/show", type: :view do
  before(:each) do
    assign(:mentee, Mentee.create!(
      nome: "Nome",
      email: "Email",
      cargo_atual: "Cargo Atual",
      empresa_atual: "Empresa Atual",
      mini_bio: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Cargo Atual/)
    expect(rendered).to match(/Empresa Atual/)
    expect(rendered).to match(/MyText/)
  end
end
