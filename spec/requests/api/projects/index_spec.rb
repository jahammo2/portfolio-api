require 'rails_helper'

describe "Project endpoints" do
  describe "GET /api/projects" do
    let!(:projects) { create_list(:project, 5, :with_all_properties) }
    let(:project) { projects[0] }
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

      expect(response_json[:data]).to include(
        id: project.id.to_s,
        type: "projects",
        attributes: {
          github_page_url: project[:github_page_url],
          web_page_url: project[:web_page_url],
          title: project[:title],
          description: project[:description],
          body: project[:body],
          date_deployed: project[:date_deployed].as_json,
          featured: project[:featured]
        },
        links: {
          self: project_link
        },
        relationships: {
          color_set: {
            data: {
              type: 'color-sets',
              id: color_set[:id].to_s,
            },
            links: {
              self: "#{project_link}/relationships/color_set",
              related: "#{project_link}/color_set"
            }
          },
          languages: {
            data: [
              {
                type: 'languages',
                id: languages.first.id.to_s,
              },
              {
                type: 'languages',
                id: languages.last.id.to_s,
              }
            ],
            links: {
              self: "#{project_link}/relationships/languages",
              related: "#{project_link}/languages"
            }
          },
          devices: {
            data: [
              {
                type: 'devices',
                id: devices.first.id.to_s,
              },
              {
                type: 'devices',
                id: devices.last.id.to_s,
              }
            ],
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
        {
          type: 'color-sets',
          id: color_set.id.to_s,
          attributes: {
            background: color_set[:background],
            button: color_set[:button],
            circle: color_set[:circle]
          },
          links: {
            self: "/color-sets/#{color_set.id}"
          }
        },
        {
          type: 'languages',
          id: languages.first.id.to_s,
          attributes: {
            title: languages.first[:title],
          },
          links: {
            self: "/languages/#{languages.first.id}"
          }
        },
        {
          type: 'languages',
          id: languages.last.id.to_s,
          attributes: {
            title: languages.last[:title],
          },
          links: {
            self: "/languages/#{languages.last.id}"
          }
        },
        {
          type: 'devices',
          id: devices.first.id.to_s,
          attributes: {
            title: devices.first[:title],
          },
          links: {
            self: "/devices/#{devices.first.id}"
          }
        },
        {
          type: 'devices',
          id: devices.last.id.to_s,
          attributes: {
            title: devices.last[:title],
          },
          links: {
            self: "/devices/#{devices.last.id}"
          }
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