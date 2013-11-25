module BasecampNinja
  module Renderer
    module Topic
      include Representable::JSON

      property :id
      property :title
      property :excerpt
      property :created_at
      property :updated_at
      property :attachments
      property :last_updater, class: BasecampNinja::Person, extend: Renderer::Person
      property :topicable, class: BasecampNinja::Topicable, extend: Renderer::Topicable
    end
  end
end