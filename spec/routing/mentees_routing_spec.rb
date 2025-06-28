require "rails_helper"

RSpec.describe MenteesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/mentees").to route_to("mentees#index")
    end

    it "routes to #new" do
      expect(get: "/mentees/new").to route_to("mentees#new")
    end

    it "routes to #show" do
      expect(get: "/mentees/1").to route_to("mentees#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/mentees/1/edit").to route_to("mentees#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/mentees").to route_to("mentees#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/mentees/1").to route_to("mentees#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/mentees/1").to route_to("mentees#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/mentees/1").to route_to("mentees#destroy", id: "1")
    end
  end
end
