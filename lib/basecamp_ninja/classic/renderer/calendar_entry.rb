module BasecampNinja; module Classic; module Renderer; module CalendarEntry
  include Representable::JSON
  
  property :id
  property :title
  property :type
  property :start_at
  property :deadline
  property :project_id
  property :created_on
  property :created_id
  property :creator_name
  property :commented_at
  property :comments_count

  # if the entry is a milestone
  property :completed
  property :responsible_party_id
  property :responsible_party_type
  property :responsible_party_name

  # if the milestone has been completed
  property :completed_on
  property :completer_id
  property :completer_name

  property :class_name, default: 'CalendarEntry'
end; end; end; end