module BasecampNinja; module Renderer; module Todolist
  include Representable::JSON

  property :id
  property :name
  property :description
  property :created_at
  property :updated_at
  property :completed
  property :position
  property :completed_count
  property :remaining_count
  property :creator, class: BasecampNinja::Person, extend: Renderer::Person
  property :todos, class: BasecampNinja::Todo do
    collection :remaining, class: BasecampNinja::Todo, extend: Renderer::Todo
    collection :completed, class: BasecampNinja::Todo, extend: Renderer::Todo
  end
  collection :comments, class: BasecampNinja::Comment, extend: Renderer::Comment
  collection :subscribers, class: BasecampNinja::Person, extend: Renderer::Person

  property :class_name, default: 'Todolist'
end; end; end