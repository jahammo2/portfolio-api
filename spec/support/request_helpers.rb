module Request
  module JsonHelpers
    def response_json
      body = JSON.parse(response.body)
      @response_json ||= HashWithIndifferentAccess.new(body)
    end
  end
end
