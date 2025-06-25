require 'rails_helper'

RSpec.describe "mentors/index", type: :view do
  before(:each) do
    assign(:mentors, [
      Mentor.create!(
        name: "Name",
        current_title: "Current Title",
        current_company: "Current Company",
        email: "Email",
        linkedin_url: "Linkedin Url",
        bio: "MyText",
        mentorship_topics: "MyText"
      ),
      Mentor.create!(
        name: "Name",
        current_title: "Current Title",
        current_company: "Current Company",
        email: "Email",
        linkedin_url: "Linkedin Url",
        bio: "MyText",
        mentorship_topics: "MyText"
      )
    ])
  end

  it "renders a list of mentors" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Current Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Current Company".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Linkedin Url".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
