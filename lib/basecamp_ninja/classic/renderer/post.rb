module BasecampNinja; module Classic; module Renderer; module Post
  include Representable::JSON
  
  property :id
  property :title
  property :body
  property :display_body
  property :posted_on
  property :commented_at
  property :project_id
  property :category_id
  property :author_id
  property :author_name
  property :milestone_id
  property :comments_count
  property :use_textile
  property :extended_body
  property :display_extended_body

  property :attachments_count
  property :category, class: BasecampNinja::Classic::Category, extend: Renderer::Category
  collection :attachments, class: BasecampNinja::Classic::Attachment, extend: Renderer::Attachment
  property :private

  property :class_name, default: 'Post'
end; end; end; end