require 'rails_helper'

RSpec.describe NumbersController, type: :controller do
  describe "show" do
    context "when is a valid call" do
      it "has status 200" do
        get :show, params: {id: 10}
        expect(response).to have_http_status(200)
      end

      it "returns an array in a JSON format" do
        get :show, params: {id: 10}
        expect(response.content_type).to eq("application/json")
        expect(JSON.parse(response.body)["numbers"].class).to eq(Array)
      end

      it "returns an array from 1 to N" do
        get :show, params: {id: 10}
        expect(JSON.parse(response.body)["numbers"]).to eq([1,2,3,4,5,6,7,8,9,10])
      end
    end

    context "when is an invalid call" do
      after(:each) do
        expect(response).to have_http_status(400)
        expect(response.body).to eq(" ")
      end
      it "when id is a string" do
        get :show, params: {id: "test"}
      end

      it "when id is a negative number" do
        get :show, params: {id: "-10"}
      end

      it "when id is higher than the max Integer" do
        max_integer = (2**(0.size * 8 -2) -1)
        get :show, params: {id: max_integer}
      end
    end
  end
end
