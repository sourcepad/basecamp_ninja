module BasecampNinja; module Renderer; module CalendarEvent
  include Representable::JSON

  property :id
  property :summary
  property :description
  property :created_at
  property :updated_at
  property :all_day
  property :starts_at
  property :ends_at
  property :creator, class: BasecampNinja::Person, extend: Renderer::Person
  property :url
  collection :comments, class: BasecampNinja::Comment, extend: Renderer::Comment
  collection :subscribers, class: BasecampNinja::Person, extend: Renderer::Person
  
  property :class_name, default: 'CalendarEvent'
end; end; end