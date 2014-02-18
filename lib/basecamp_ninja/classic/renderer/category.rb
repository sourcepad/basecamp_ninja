module BasecampNinja; module Classic; module Renderer; module Category
  include Representable::JSON
  
  property :id
  property :name
  property :project_id
  property :elements_count
  property :type
end; end; end; end