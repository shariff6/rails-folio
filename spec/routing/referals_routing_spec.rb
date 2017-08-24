require "rails_helper"

RSpec.describe ReferalsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/referals").to route_to("referals#index")
    end

    it "routes to #new" do
      expect(:get => "/referals/new").to route_to("referals#new")
    end

    it "routes to #show" do
      expect(:get => "/referals/1").to route_to("referals#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/referals/1/edit").to route_to("referals#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/referals").to route_to("referals#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/referals/1").to route_to("referals#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/referals/1").to route_to("referals#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/referals/1").to route_to("referals#destroy", :id => "1")
    end

  end
end
