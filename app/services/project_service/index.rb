module ProjectService
  class Index < ServiceBase
    def execute
      Project.all
    end
  end
end
