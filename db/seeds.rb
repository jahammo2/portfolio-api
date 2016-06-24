Rails.logger.info "START SEEDING DATABASE..."

if Rails.env.in? %w(development test)
  FactoryGirl.create_list(:project, 5, :with_all_properties)
  FactoryGirl.create(:project, :with_all_properties, featured: true)
  FactoryGirl.create(:project, :with_all_properties_and_featured_device)
end

Rails.logger.info "DONE SEEDING DATABASE."
