module Api
  class BioController < ApiController
    def show
      outcome = BioService::Show.run
      render_service(outcome)
    end
  end
end
