require 'rails_helper'

describe "Project endpoints" do
  describe "POST /api/projects" do
    let (:admin) { create(:admin) }
    let (:valid_params) {
      {
        data: {
          type: "projects",
          attributes: {
            github_page_url: Faker::Internet.url,
            web_page_url: Faker::Internet.url,
            title: Faker::Hacker.adjective,
            description: Faker::Hacker.say_something_smart,
            body: Faker::Hipster.paragraphs(1),
            date_deployed: Faker::Date.backward(60)
          },
          relationships: {
            color_set: {
              data: {
                background: Faker::Color.hex_color,
                button: Faker::Color.color_name,
                circle: Faker::Color.rgb_color
              }
            },
            languages: [
              {
                title: Faker::Hacker.noun
              },
              {
                title: Faker::Hacker.noun
              }
            ],
            devices: [
              {
                title: Faker::Hacker.noun
              },
              {
                title: Faker::Hacker.noun
              }
            ]
          }
        },
      }
    }

    it "returns a 401 without proper header auth" do
      post "/api/projects"

      expect(response.status).to eq(401)
    end

    context "when the params are valid" do
      it "returns a 200" do
        authenticated_post "/api/projects", admin, valid_params

        project = Project.last
        project_params = valid_params[:data]
        attributes = project_params[:attributes]
        color_set = project_params[:relationships][:color_set][:data]

        expect(response.status).to eq(200)
        expect(response_json).to include(
          data: {
            id: project.id.to_s,
            type: "projects",
            attributes: {
              github_page_url: attributes[:github_page_url],
              web_page_url: attributes[:web_page_url],
              title: attributes[:title],
              description: attributes[:description],
              body: attributes[:body],
              date_deployed: attributes[:date_deployed]
            },
            relationships: {
              color_set: {
                data: {
                  background
                }
              },
              first_place_beer: {
                data: nil
              },
              second_place_beer: {
                data: nil
              },
              third_place_beer: {
                data: nil
              },
              fourth_place_beer: {
                data: nil
              },
              fifth_place_beer: {
                data: nil
              }
            }
          },
          included: [
            {
              id: beer1.id.to_s,
              type: "beers",
              attributes: {
                name: beer1.name,
                abv: beer1.abv,
                description: beer1.description
              }
            },
            {
              id: beer2.id.to_s,
              type: "beers",
              attributes: {
                name: beer2.name,
                abv: beer2.abv,
                description: beer2.description
              }
            }
          ],
          meta: {
            success: true,
            message: "Success!"
          }
        )
      end
    end
  end
end
