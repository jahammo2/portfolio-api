module Request
  module JsonHelpers
    def response_json
      @json_response ||= HashWithIndifferentAccess.new(JSON.parse(response.body))
    end
  end
end
