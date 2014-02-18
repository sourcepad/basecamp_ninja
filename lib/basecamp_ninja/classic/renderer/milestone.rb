module BasecampNinja; module Classic; module Renderer; module Milestone
  include Representable::JSON
  
  property :id
  property :title
  property :deadline
  property :completed
  property :project_id
  property :created_on
  property :created_id
  property :created_name
  property :responsible_party_id
  property :responsible_party_type
  property :responsible_party_name
  property :commented_at
  property :comments_count

  # if the milestone has been completed
  property :completed_at
  property :completer_id
  property :completer_name
end; end; end; end