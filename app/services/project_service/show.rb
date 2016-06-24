module ProjectService
  class Show < ServiceBase
    integer :id

    def execute
      Project.find(id)
    end
  end
end
