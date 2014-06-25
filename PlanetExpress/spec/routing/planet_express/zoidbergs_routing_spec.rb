require "rails_helper"

module PlanetExpress
  RSpec.describe ZoidbergsController, type: :routing do

    routes { PlanetExpress::Engine.routes }

    describe "routing" do

      let(:pzc) { "planet_express/zoidbergs" }

      it "routes to #index" do
        expect(get: "/zoidbergs").to route_to(controller: pzc, action: "index")
      end

      it "routes to #new" do
        expect(get: "/zoidbergs/new").to route_to(controller: pzc, action: "new")
      end

      it "routes to #show" do
        expect(get: "/zoidbergs/1").to route_to(controller: pzc, action: "show", id: "1")
      end

      it "routes to #edit" do
        expect(get: "/zoidbergs/1/edit").to route_to(controller: pzc, action: "edit", id: "1")
      end

      it "routes to #create" do
        expect(post: "/zoidbergs").to route_to(controller: pzc, action: "create")
      end

      it "routes to #update" do
        expect(put: "/zoidbergs/1").to route_to(controller: pzc, action: "update", id: "1")
      end

      it "routes to #destroy" do
        expect(delete: "/zoidbergs/1").to route_to(controller: pzc, action: "destroy", id: "1")
      end

    end
  end
end
