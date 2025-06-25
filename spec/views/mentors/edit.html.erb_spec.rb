require 'rails_helper'

RSpec.describe "mentors/edit", type: :view do
  let(:mentor) {
    Mentor.create!(
      name: "MyString",
      current_title: "MyString",
      current_company: "MyString",
      email: "MyString",
      linkedin_url: "MyString",
      bio: "MyText",
      mentorship_topics: "MyText"
    )
  }

  before(:each) do
    assign(:mentor, mentor)
  end

  it "renders the edit mentor form" do
    render

    assert_select "form[action=?][method=?]", mentor_path(mentor), "post" do

      assert_select "input[name=?]", "mentor[name]"

      assert_select "input[name=?]", "mentor[current_title]"

      assert_select "input[name=?]", "mentor[current_company]"

      assert_select "input[name=?]", "mentor[email]"

      assert_select "input[name=?]", "mentor[linkedin_url]"

      assert_select "textarea[name=?]", "mentor[bio]"

      assert_select "textarea[name=?]", "mentor[mentorship_topics]"
    end
  end
end
