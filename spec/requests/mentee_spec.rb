require 'rails_helper'

RSpec.describe "/mentees", type: :request do
  describe "GET /index" do
    it "renders a successful response" do
      create(:mentee)
      get mentees_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      mentee = create(:mentee)
      get mentee_url(mentee)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_mentee_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      mentee = create(:mentee)
      get edit_mentee_url(mentee)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Mentee" do
        attributes = build(:mentee).attributes
        expect {
          post mentees_url, params: { mentee: attributes }
        }.to change(Mentee, :count).by(1)
      end

      it "redirects to the created mentee" do
        attributes = build(:mentee).attributes
        post mentees_url, params: { mentee: attributes }
        expect(response).to redirect_to(mentee_url(Mentee.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Mentee" do
        invalid_attributes = build(:mentee).attributes.merge(name: nil)
        expect {
          post mentees_url, params: { mentee: invalid_attributes }
        }.to change(Mentee, :count).by(0)
      end

      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        invalid_attributes = build(:mentee).attributes.merge(name: nil)
        post mentees_url, params: { mentee: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity).or have_http_status(:bad_request)
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      it "updates the requested mentee" do
        mentee = create(:mentee, name: "old name")
        new_name = "New Name"
        patch mentee_url(mentee), params: { mentee: { name: new_name } }
        mentee.reload
        expect(mentee.name).to eq(new_name)
      end

      it "redirects to the mentee" do
        mentee = create(:mentee, name: "old name")
        new_name = "New Name"
        patch mentee_url(mentee), params: { mentee: { name: new_name } }
        mentee.reload
        expect(response).to redirect_to(mentee_url(mentee))
      end
    end

    context "with invalid parameters" do
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        mentee = create(:mentee, name: "old name")
        patch mentee_url(mentee), params: { mentee: { name: nil } }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested mentee" do
      mentee = create(:mentee)
      expect {
        delete mentee_url(mentee)
      }.to change(Mentee, :count).by(-1)
    end

    it "redirects to the mentees list" do
      mentee = create(:mentee)
      delete mentee_url(mentee)
      expect(response).to redirect_to(mentees_url)
    end
  end
end
