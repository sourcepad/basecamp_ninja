require "basecamp_ninja/classic/api"

module BasecampNinja; module Classic
  class Client
    attr_accessor :token, :basecamp_url, :connections

    include BasecampNinja::Classic::Modules::Attachment
    include BasecampNinja::Classic::Modules::CalendarEntry
    include BasecampNinja::Classic::Modules::Message
    include BasecampNinja::Classic::Modules::Person
    include BasecampNinja::Classic::Modules::Project
    include BasecampNinja::Classic::Modules::TodoItem
    include BasecampNinja::Classic::Modules::TodoList

    def initialize(basecamp_url = nil, token = nil)
      @basecamp_url = basecamp_url
      @token = token
    end

    def connection
      @connections ? @connections : (@connections = {})
      @connections[@token] ? @connections[@token] : classic_connection
    end

    private

      def classic_connection
        @connections[@token] = RestClient::Resource.new(basecamp_url, headers: {
          'Authorization' => "Bearer #{@token}", 
          'Content-Type' => "application/xml",
          'User-Agent' => 'BasecampNinja (jeds@sourcepad.com)'
        })
      end
  end
end; end