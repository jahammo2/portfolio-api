Rails.logger.info "START SEEDING DATABASE..."

if Rails.env.in? %w(development test)
  FactoryBot.create_list(:project, 14, :with_all_properties_but_no_secondary_devices)
  FactoryBot.create(:project, :with_all_properties, featured: true)
  FactoryBot.create(:social_link, site: "linkedin")
  FactoryBot.create(:social_link, site: "twitter")
  FactoryBot.create(:social_link, site: "instagram")
  FactoryBot.create(:social_link, site: "github")
  FactoryBot.create(:social_link, site: "dribbble")
  FactoryBot.create(:bio)
  Admin.create!(
    email: "admin@example.com",
    password: "password",
    password_confirmation: "password",
  )
end

Rails.logger.info "DONE SEEDING DATABASE."
