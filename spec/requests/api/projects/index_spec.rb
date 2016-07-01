require "rails_helper"

describe "Project endpoints" do
  describe "GET /api/projects" do
    let!(:projects) { create_list(:project, 4, :with_all_properties) }
    let!(:project) { create(:project, :with_all_properties, featured: true) }
    let(:color_set) { project.color_set }
    let(:languages) { project.languages }
    let(:devices) { project.devices }
    let(:project_link) { "/projects/#{project.id}" }

    subject { get "/api/projects" }

    it "returns a 200 without proper header auth" do
      subject

      expect(response.status).to eq(200)
    end

    it "returns project details" do
      SmarfDoc.skip
      subject

      featured_device = project.devices.find_by(featured: true)
      expect(response_json[:data]).to include(
        id: project.id.to_s,
        type: "projects",
        attributes: {
          github_page_url: project[:github_page_url],
          web_page_url: project[:web_page_url],
          title: project[:title],
          description: project[:description],
          opening_body: project[:opening_body],
          closing_body: project[:closing_body],
          date_deployed: project[:date_deployed].as_json,
          featured: project[:featured],
          header_image: project.header_image.url,
          featured_screenshot: {
            device: featured_device.title,
            image: featured_device.screenshot.image.url
          }
        },
        links: {
          self: project_link
        },
        relationships: {
          color_set: {
            data: {
              type: "color-sets",
              id: color_set[:id].to_s,
            },
            links: {
              self: "#{project_link}/relationships/color_set",
              related: "#{project_link}/color_set"
            }
          },
          languages: {
            links: {
              self: "#{project_link}/relationships/languages",
              related: "#{project_link}/languages"
            }
          },
          devices: {
            links: {
              self: "#{project_link}/relationships/devices",
              related: "#{project_link}/devices"
            }
          }
        }
      )
    end

    it "returns the included data" do
      SmarfDoc.skip
      subject

      expect(response_json[:included]).to include(
        type: "color-sets",
        id: color_set.id.to_s,
        attributes: {
          background: color_set[:background],
          button: color_set[:button],
          circle: color_set[:circle]
        },
        links: {
          self: "/color-sets/#{color_set.id}"
        }
      )
    end

    it "returns 5 projects" do
      SmarfDoc.skip
      subject

      expect(response_json[:data].length).to equal(5)
    end
  end
end
