Rails.logger.info "START SEEDING DATABASE..."

if Rails.env.in? %w(development test)
  FactoryGirl.create_list(:project, 5, :with_all_properties)
  FactoryGirl.create(:project, :with_all_properties, featured: true)
  FactoryGirl.create(:social_link, site: 'linkedin')
  FactoryGirl.create(:social_link, site: 'twitter')
  FactoryGirl.create(:social_link, site: 'instagram')
  FactoryGirl.create(:social_link, site: 'github')
  Admin.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
end

Rails.logger.info "DONE SEEDING DATABASE."
