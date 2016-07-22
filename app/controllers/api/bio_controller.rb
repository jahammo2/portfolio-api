class Api::BioController < Api::ApiController
  def show
    outcome = BioService::Show.run
    render_service(outcome)
  end
end
