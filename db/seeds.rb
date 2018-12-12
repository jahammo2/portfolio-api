Rails.logger.info "START SEEDING DATABASE..."

if Rails.env.in? %w(development test)
  FactoryBot.create_list(:project, 5, :with_all_properties)
  FactoryBot.create(:project, :with_all_properties, featured: true)
  FactoryBot.create(:social_link, site: "linkedin")
  FactoryBot.create(:social_link, site: "twitter")
  FactoryBot.create(:social_link, site: "instagram")
  FactoryBot.create(:social_link, site: "github")
  FactoryBot.create(:bio)
  Admin.create!(
    email: "admin@example.com",
    password: "password",
    password_confirmation: "password",
  )
end

Rails.logger.info "DONE SEEDING DATABASE."
