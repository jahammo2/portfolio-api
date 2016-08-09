require "rails_helper"

describe "Bio endpoints" do
  describe "GET /api/bio" do
    let!(:bio) { create(:bio) }

    subject { get "/api/bio" }

    it "returns a 200 without proper header auth" do
      subject

      expect(response.status).to eq(200)
    end

    it "returns bio details" do
      SmarfDoc.skip
      subject

      expect(response_json[:data]).to include(
        id: bio.id.to_s,
        type: "bios",
        attributes: {
          body: bio[:body],
          title: bio[:title],
          email: bio[:email],
          resume: bio.resume.url,
          phone_number: bio[:phone_number],
          name: bio[:name],
          background_image: bio.background_image.url,
          profile_picture: bio.profile_picture.url
        },
        links: {
          self: "/bios/#{bio.id}"
        }
      )
    end
  end
end
