module BasecampNinja; module Classic; module Renderer; module TimeEntry
  include Representable::JSON
  
  property :id
  property :project_id
  property :person_id
  property :person_name
  property :date
  property :hours
  property :description
  property :todo_item_id
end; end; end; end