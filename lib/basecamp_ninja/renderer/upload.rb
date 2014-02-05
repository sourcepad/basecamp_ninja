module BasecampNinja; module Renderer; module Upload
  include Representable::JSON

  property :id
  property :created_at
  property :updated_at
  property :content
  collection :attachments, class: BasecampNinja::Attachment, extend: Renderer::Attachment
  collection :comments, class: BasecampNinja::Comment, extend: Renderer::Comment
  collection :subscribers, class: BasecampNinja::Person, extend: Renderer::Person
  
  property :class_name, default: 'Upload'
end; end; end