Rails.logger.info "START SEEDING DATABASE..."

if Rails.env.in? %w(development test)
  FactoryGirl.create_list(:project, 5, :with_all_properties)
end

Rails.logger.info "DONE SEEDING DATABASE."

