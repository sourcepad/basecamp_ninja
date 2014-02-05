module BasecampNinja; module Renderer; module Attachment
  include Representable::JSON

  property :id
  property :key
  property :name
  property :byte_size
  property :content_type
  property :linked_source
  property :linked_type
  property :link_url
  property :created_at
  property :url
  property :creator, class: BasecampNinja::Person, extend: Renderer::Person
  property :attachable, class: BasecampNinja::Attachable, extend: Renderer::Attachable

  property :class_name, default: 'Attachment'
end; end; end