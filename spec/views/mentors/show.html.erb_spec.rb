require 'rails_helper'

RSpec.describe "mentors/show", type: :view do
  before(:each) do
    assign(:mentor, Mentor.create!(
      name: "Name",
      current_title: "Current Title",
      current_company: "Current Company",
      email: "Email",
      linkedin_url: "Linkedin Url",
      bio: "MyText",
      mentorship_topics: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Current Title/)
    expect(rendered).to match(/Current Company/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Linkedin Url/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
