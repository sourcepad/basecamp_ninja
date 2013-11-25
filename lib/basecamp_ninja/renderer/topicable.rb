module BasecampNinja
  module Renderer
    module Topicable
      include Representable::JSON

      property :id
      property :type
      property :url
    end
  end
end