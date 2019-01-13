module ProjectService
  class Index < ServiceBase
    def execute
      Project.all.order(date_deployed: :desc)
    end
  end
end
