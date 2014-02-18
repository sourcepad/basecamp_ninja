module BasecampNinja; module Classic; module Renderer; module Attachment
  include Representable::JSON
  
  property :id
  property :name, as: :title
  property :description
  property :byte_size
  property :download_url
  property :project_id
  property :category_id
  property :person_id
  property :private
  property :created_on

  # if the attachment belongs to a message or comment
  property :owner_id
  property :owner_type

  # or attachments with multiple versions, collection specifies
  # the id of the "parent" attachment (version 1), and current will
  # be true for the most recent version
  property :collection
  property :version
  property :current

  property :class_name, default: 'Attachment'
end; end; end; end