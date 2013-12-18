module BasecampNinja; module Classic; module Renderer; module TodoList
  include Representable::JSON
  
  property :id
  property :name, as: :title
  property :description
  property :project_id
  property :milestone_id
  property :position
  property :completed

  # if user can see private lists
  property :private

  # if the account supports time tracking
  property :tracked

  # if todo-items are included in the response
  collection :todo_items, class: BasecampNinja::Classic::TodoItem, extend: Renderer::TodoItem

  property :class_name, default: 'TodoList'
end; end; end; end