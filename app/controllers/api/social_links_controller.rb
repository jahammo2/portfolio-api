module Api
  class SocialLinksController < ApiController
    def index
      outcome = SocialLinkService::Index.run
      render_service(outcome, is_collection: true)
    end
  end
end
