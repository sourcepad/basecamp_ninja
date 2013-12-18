module BasecampNinja; module Classic; module Renderer; module Comment
  include Representable::JSON
  
  property :id
  property :author_id
  property :author_name
  property :commentable_id
  property :commentable_type
  property :body
  property :emailed_from
  property :created_at

  property :attachments_count
  collection :attachments, class: BasecampNinja::Classic::Attachment, extend: Renderer::Attachment
end; end; end; end