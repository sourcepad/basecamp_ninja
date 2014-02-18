module BasecampNinja; module Classic; module Renderer; module Project
  include Representable::JSON
  
  property :id
  property :name
  property :created_on
  property :status
  property :last_changed_on
  property :company, class: BasecampNinja::Classic::Company, extend: Renderer::Company

  # if user is administrator, or show_announcement is true
  property :announcement
  
  # if user is administrator
  property :start_page
  property :show_writeboards
  property :show_announcement
end; end; end; end