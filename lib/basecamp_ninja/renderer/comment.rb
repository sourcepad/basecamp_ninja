module BasecampNinja; module Renderer; module Comment
  include Representable::JSON

  property :id
  property :content
  property :created_at
  property :updated_at
  collection :attachments, class: BasecampNinja::Attachment, extend: Renderer::Attachment
  property :creator, class: BasecampNinja::Person, extend: Renderer::Person

  property :class_name, default: 'Comment'
end; end; end