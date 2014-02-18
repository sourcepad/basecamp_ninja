module BasecampNinja; module Renderer; module Todo
  include Representable::JSON

  property :id
  property :subject
  property :created_at
  property :updated_at
  property :content
  property :creator, class: BasecampNinja::Person, extend: Renderer::Person
  property :assignee, class: BasecampNinja::Assignee, extend: Renderer::Assignee
  collection :comments, class: BasecampNinja::Comment, extend: Renderer::Comment
  collection :subscribers, class: BasecampNinja::Person, extend: Renderer::Person

  property :class_name, default: 'Todo'
end; end; end