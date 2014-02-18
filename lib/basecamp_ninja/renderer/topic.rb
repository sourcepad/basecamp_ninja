module BasecampNinja; module Renderer; module Topic
  include Representable::JSON

  property :id
  property :title
  property :excerpt
  property :created_at
  property :updated_at
  property :attachments
  property :last_updater, class: BasecampNinja::Person, extend: Renderer::Person, as: :creator
  property :topicable, class: BasecampNinja::Topicable, extend: Renderer::Topicable

  property :class_name, decorator_scope: true

  def class_name
    represented.topicable.type
  end
end; end; end