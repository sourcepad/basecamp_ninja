module BasecampNinja; module Classic; module Renderer; module TodoItem
  include Representable::JSON

  property :id
  property :todo_list_id
  property :content
  property :position
  property :created_on
  property :creator_id
  property :creator_name
  property :completed
  property :updated_at
  property :completed_at
  property :comments_count

  # if the item has a due date (in the company time zone)
  property :due_at

  # if the item has a responsible party
  property :responsible_party_type
  property :responsible_party_id
  property :responsible_party_name

  # if the item has been completed
  property :completed_at
  property :completer_id
  property :completer_name

  property :class_name, default: 'TodoItem'
end; end; end; end