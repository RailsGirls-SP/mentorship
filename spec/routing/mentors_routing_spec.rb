require "rails_helper"

RSpec.describe MentorsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/mentors").to route_to("mentors#index")
    end

    it "routes to #new" do
      expect(get: "/mentors/new").to route_to("mentors#new")
    end

    it "routes to #show" do
      expect(get: "/mentors/1").to route_to("mentors#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/mentors/1/edit").to route_to("mentors#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/mentors").to route_to("mentors#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/mentors/1").to route_to("mentors#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/mentors/1").to route_to("mentors#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/mentors/1").to route_to("mentors#destroy", id: "1")
    end
  end
end
