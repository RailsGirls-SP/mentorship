require 'rails_helper'

RSpec.describe "/mentors", type: :request do
  describe "GET /index" do
    it "renders a successful response" do
      create(:mentor)

      get mentors_url

      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      mentor = create(:mentor)

      get mentor_url(mentor)

      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_mentor_url

      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      mentor = create(:mentor)

      get edit_mentor_url(mentor)

      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Mentor" do
        attributes = build(:mentor).attributes

        expect {
          post mentors_url, params: { mentor: attributes }
        }.to change(Mentor, :count).by(1)
      end

      it "redirects to the created mentor" do
        attributes = build(:mentor).attributes

        post mentors_url, params: { mentor: attributes }

        expect(response).to redirect_to(mentor_url(Mentor.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Mentor" do
        invalid_attributes = build(:mentor).attributes.delete(:name)

        expect {
          post mentors_url, params: { mentor: invalid_attributes }
        }.to change(Mentor, :count).by(0)
      end

      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        invalid_attributes = build(:mentor).attributes.delete(:name)

        post mentors_url, params: { mentor: invalid_attributes }

        expect(response).to have_http_status(:bad_request)
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      it "updates the requested mentor" do
        mentor = create(:mentor, name: "old name")
        new_name = "New Name"

        patch mentor_url(mentor), params: { mentor: { name: new_name } }

        mentor.reload
        expect(mentor.name).to eq(new_name)
      end

      it "redirects to the mentor" do
        mentor = create(:mentor, name: "old name")
        new_name = "New Name"

        patch mentor_url(mentor), params: { mentor: { name: new_name } }

        mentor.reload
        expect(response).to redirect_to(mentor_url(mentor))
      end
    end

    context "with invalid parameters" do
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        mentor = create(:mentor, name: "old name")
        invalid_name = nil

        patch mentor_url(mentor), params: { mentor: { name: invalid_name } }

        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested mentor" do
      mentor = create(:mentor)

      expect {
        delete mentor_url(mentor)
      }.to change(Mentor, :count).by(-1)
    end

    it "redirects to the mentors list" do
      mentor = create(:mentor)

      delete mentor_url(mentor)
      expect(response).to redirect_to(mentors_url)
    end
  end
end
