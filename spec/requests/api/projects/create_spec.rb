require "rails_helper"

describe "Project endpoints" do
  describe "POST /api/projects" do
    let(:admin) { create(:admin) }

    it "returns a 401 without proper header auth" do
      post "/api/projects"

      expect(response.status).to eq(401)
    end

    context "when the params are valid" do
      let(:valid_params) do
        {
          data: {
            type: "projects",
            attributes: {
              github_page_url: Faker::Internet.url,
              web_page_url: Faker::Internet.url,
              title: Faker::Hacker.adjective,
              description: Faker::Hacker.say_something_smart,
              opening_body: Faker::Lorem.paragraph,
              closing_body: Faker::Lorem.paragraph,
              date_deployed: Faker::Date.backward(60),
              featured: false,
              header_image: nil
            },
            relationships: {
              color_set: {
                data: {
                  background: Faker::Color.hex_color,
                  button: Faker::Color.color_name,
                  circle: Faker::Color.hex_color
                }
              },
              languages: {
                data: [
                  {
                    title: Faker::Hacker.noun
                  },
                  {
                    title: Faker::Hacker.noun
                  }
                ]
              },
              devices: {
                data: [
                  {
                    title: Faker::Hacker.noun
                  },
                  {
                    title: Faker::Hacker.noun
                  }
                ]
              },
            }
          },
        }
      end
      let(:project) { Project.last }
      let(:project_params) { valid_params[:data] }

      subject { authenticated_post "/api/projects", admin, valid_params }

      it "returns a 200" do
        SmarfDoc.skip
        subject

        expect(response.status).to eq(200)
      end

      it "returns the data" do
        subject

        attributes = project_params[:attributes]
        project_link = "/projects/#{project.id}"

        expect(response_json[:data]).to include(
          id: project.id.to_s,
          type: "projects",
          attributes: {
            github_page_url: attributes[:github_page_url],
            web_page_url: attributes[:web_page_url],
            title: attributes[:title],
            description: attributes[:description],
            opening_body: attributes[:opening_body],
            closing_body: attributes[:closing_body],
            date_deployed: attributes[:date_deployed].as_json,
            featured: attributes[:featured],
            header_image: nil
          },
          links: {
            self: project_link
          },
          relationships: {
            color_set: {
              data: {
                type: "color-sets",
                id: ColorSet.last.id.to_s,
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
                  id: Language.all[-2].id.to_s,
                },
                {
                  type: "languages",
                  id: Language.last.id.to_s,
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
                  id: Device.all[-2].id.to_s,
                },
                {
                  type: "devices",
                  id: Device.last.id.to_s,
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

        color_set = project_params[:relationships][:color_set][:data]
        languages = project_params[:relationships][:languages][:data]
        devices = project_params[:relationships][:devices][:data]

        expect(response_json[:included]).to include(
          {
            type: "color-sets",
            id: ColorSet.last.id.to_s,
            attributes: {
              background: color_set[:background],
              button: color_set[:button],
              circle: color_set[:circle]
            },
            links: {
              self: "/color-sets/#{ColorSet.last.id}"
            }
          },
          {
            type: "languages",
            id: Language.last.id.to_s,
            attributes: {
              title: languages[1][:title],
            },
            links: {
              self: "/languages/#{Language.last.id}"
            }
          },
          {
            type: "languages",
            id: Language.all[-2].id.to_s,
            attributes: {
              title: languages[0][:title],
            },
            links: {
              self: "/languages/#{Language.all[-2].id}"
            }
          },
          {
            type: "devices",
            id: Device.last.id.to_s,
            attributes: {
              title: devices[1][:title],
            },
            links: {
              self: "/devices/#{Device.last.id}"
            },
            relationships: {
              screenshot: {
                links: {
                  self: "/devices/#{Device.last.id}/relationships/screenshot",
                  related: "/devices/#{Device.last.id}/screenshot"
                }
              }
            }
          },
          {
            type: "devices",
            id: Device.all[-2].id.to_s,
            attributes: {
              title: devices[0][:title],
            },
            links: {
              self: "/devices/#{Device.all[-2].id}"
            },
            relationships: {
              screenshot: {
                links: {
                  self: "/devices/#{Device.all[-2].id}/relationships/screenshot",
                  related: "/devices/#{Device.all[-2].id}/screenshot"
                }
              }
            }
          }
        )
      end
    end

    context "when the params are not valid" do
      let(:invalid_params) do
        {
          data: {
            type: "projects",
            attributes: {}
          }
        }
      end
      let(:params_without_title) do
        {
          data: {
            type: "projects",
            attributes: {
              github_page_url: Faker::Internet.url,
              web_page_url: Faker::Internet.url,
              title: Faker::Hacker.adjective,
              description: Faker::Hacker.say_something_smart,
              opening_body: Faker::Lorem.paragraph,
              closing_body: Faker::Lorem.paragraph,
              date_deployed: Faker::Date.backward(60)
            },
            relationships: {
              color_set: {
                data: {
                  background: Faker::Color.hex_color,
                  button: Faker::Color.color_name,
                  circle: Faker::Color.hex_color
                }
              },
              languages: {
                data: [
                  {
                    # here
                    title: nil
                  },
                  {
                    title: Faker::Hacker.noun
                  }
                ]
              },
              devices: {
                data: [
                  {
                    title: Faker::Hacker.noun
                  },
                  {
                    title: Faker::Hacker.noun
                  }
                ]
              },
            }
          },
        }
      end

      it "returns a 422 if there are no params" do
        authenticated_post "/api/projects", admin, invalid_params

        expect(response.status).to eq(422)
        expect(response_json).to include(
          "errors" => [
            {
              "status" => "422",
              "title" => "Validation Failed",
              "detail" => "Params do not contain data for color_set, languages, or devices"
            }
          ]
        )
      end

      it "returns a 422 if one param is invalid at the model level" do
        SmarfDoc.skip
        authenticated_post "/api/projects", admin, params_without_title

        expect(response.status).to eq(422)
        expect(response_json).to include(
          "errors" => [
            {
              "status" => "422",
              "title" => "Validation Failed",
              "detail" => "Base Languages title can't be blank"
            }
          ]
        )
      end
    end
  end
end
