module BasecampNinja; module Classic; module Renderer; module Subscription
  include Representable::JSON
  
  property :name
  property :writeboards
  property :projects
  property :storage
  property :ssl
  property :time_tracking
end; end; end; end