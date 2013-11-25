require "basecamp_ninja/api"

module BasecampNinja
  class Client
    include BasecampNinja::Modules::Person
    include BasecampNinja::Modules::Project
    include BasecampNinja::Modules::Topic

    attr_accessor :token, :basecamp_id, :connections

    def initialize(basecamp_id = nil, token = nil)
      @basecamp_id = basecamp_id
      @token = token
    end

    def connection
      @connections ? @connections : (@connections = {})
      @connections[@token] ? @connections[@token] : new_connection
    end

    private

      def new_connection
        @connections[@token] = RestClient::Resource.new("https://basecamp.com/#{basecamp_id}/api/v1",
          :headers => {
            'Authorization' => "Bearer #{@token}", 
            'Content-Type' => 'application/json',
            'User-Agent' => 'Bento (jeds@sourcepad.com)'
          }
        )
      end
  end
end