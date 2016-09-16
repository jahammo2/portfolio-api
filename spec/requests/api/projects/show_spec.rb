require "rails_helper"

describe "Project endpoints" do
  describe "GET /api/projects/:id" do
    let!(:projects) { create_list(:project, 4, :with_all_properties) }
    let!(:project) { create(:project, :with_all_properties, featured: true) }
    let(:color_set) { project.color_set }
    let(:languages) { project.languages }
    let(:devices) { project.devices }
    let(:project_link) { "/projects/#{project.id}" }

    subject { get "/api/projects/#{project.id}" }

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
          opening_body: project[:opening_body],
          closing_body: project[:closing_body],
          date_deployed: project[:date_deployed].as_json,
          featured: project[:featured],
          header_image: project.header_image.url,
          logo: project.logo.url
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
            data: [
              {
                type: "languages",
                id: languages.first.id.to_s,
              },
              {
                type: "languages",
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
                type: "devices",
                id: devices.first.id.to_s,
              },
              {
                type: "devices",
                id: devices.second.id.to_s,
              },
              {
                type: "devices",
                id: devices.third.id.to_s,
              },
              {
                type: "devices",
                id: devices.fourth.id.to_s,
              },
              {
                type: "devices",
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

      first_device_link = "/devices/#{devices.first.id}"
      last_device_link = "/devices/#{devices.last.id}"
      first_screenshot = devices.first.screenshot
      last_screenshot = devices.last.screenshot
      expect(response_json[:included]).to include(
        {
          type: "color-sets",
          id: color_set.id.to_s,
          attributes: {
            background: color_set[:background],
            button: color_set[:button],
            circle: color_set[:circle],
            logo_background: color_set[:logo_background],
            logo_title: color_set[:logo_title],
            button_text: color_set[:button_text],
            button_hover: color_set[:button_hover],
            text: color_set[:text]
          },
          links: {
            self: "/color-sets/#{color_set.id}"
          }
        },
        {
          type: "languages",
          id: languages.first.id.to_s,
          attributes: {
            title: languages.first[:title],
          },
          links: {
            self: "/languages/#{languages.first.id}"
          }
        },
        {
          type: "languages",
          id: languages.last.id.to_s,
          attributes: {
            title: languages.last[:title],
          },
          links: {
            self: "/languages/#{languages.last.id}"
          }
        },
        {
          type: "devices",
          id: devices.first.id.to_s,
          attributes: {
            title: devices.first[:title],
          },
          links: {
            self: first_device_link
          },
          relationships: {
            screenshot: {
              links: {
                self: "#{first_device_link}/relationships/screenshot",
                related: "#{first_device_link}/screenshot"
              },
              data: {
                type: "screenshots",
                id: first_screenshot.id.to_s
              }
            }
          }
        },
        {
          type: "devices",
          id: devices.last.id.to_s,
          attributes: {
            title: devices.last[:title],
          },
          links: {
            self: "/devices/#{devices.last.id}"
          },
          relationships: {
            screenshot: {
              links: {
                self: "#{last_device_link}/relationships/screenshot",
                related: "#{last_device_link}/screenshot"
              },
              data: {
                type: "screenshots",
                id: last_screenshot.id.to_s
              }
            }
          }
        },
        {
          type: "screenshots",
          id: first_screenshot.id.to_s,
          attributes: {
            caption: first_screenshot.caption,
            image: first_screenshot.image.url
          },
          links: {
            self: "/screenshots/#{first_screenshot.id}"
          }
        },
        {
          type: "screenshots",
          id: last_screenshot.id.to_s,
          attributes: {
            caption: last_screenshot.caption,
            image: last_screenshot.image.url
          },
          links: {
            self: "/screenshots/#{last_screenshot.id}"
          }
        }
      )
    end
  end
end
