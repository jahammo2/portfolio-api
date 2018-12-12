require "rails_helper"

describe "SocialLink endpoints" do
  describe "GET /api/social-links" do
    let!(:social_link) { create(:social_link) }

    subject { get "/api/social-links" }

    it "returns a 200 without proper header auth" do
      subject

      expect(response.status).to eq(200)
    end

    it "returns social link details" do
      SmarfDoc.skip
      subject

      expect(response_json[:data]).to include(
        id: social_link.id.to_s,
        type: "social-links",
        attributes: {
          site: social_link[:site],
          url: social_link[:url],
        },
        links: {
          self: "/social-links/#{social_link.id}",
        },
      )
    end
  end
end
