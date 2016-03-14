require 'rails_helper'

describe "Project endpoints" do
  describe "POST /api/projects" do
    let (:admin) { create(:admin) }

    context "with the proper auth headers/tokens" do
      it "returns a 200" do
        authenticated_post "/api/projects", admin, params
      end
    end

    context "when the params are valid" do
      it "returns a 200" do
      end
    end
  end
end
