module BioService
  class Show < ServiceBase
    def execute
      Bio.first
    end
  end
end
