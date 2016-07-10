module SocialLinkService
  class Index < ServiceBase
    def execute
      SocialLink.all
    end
  end
end
