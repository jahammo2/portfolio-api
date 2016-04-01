module Request
  module AuthorizedRequestHelpers
    def authenticated_get(path, user, params = nil)
      auth_headers = user.create_new_auth_token
      get path, params, auth_headers
    end

    def authenticated_post(path, user, params = nil)
      auth_headers = user.create_new_auth_token
      post path, params, auth_headers
    end

    def authenticated_put(path, user, params = nil)
      auth_headers = user.create_new_auth_token
      put path, params, auth_headers
    end

    def authenticated_delete(path, user, params = nil)
      auth_headers = user.create_new_auth_token
      delete path, params, auth_headers
    end
  end
end
