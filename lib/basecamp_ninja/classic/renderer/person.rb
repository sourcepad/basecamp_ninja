module BasecampNinja; module Classic; module Renderer; module Person
  include Representable::JSON
  
  property :id
  property :first_name
  property :last_name
  property :title
  property :email_address
  property :im_handle
  property :im_service
  property :phone_number_office
  property :phone_number_office_ext
  property :phone_number_mobile
  property :phone_number_home
  property :phone_number_fax
  property :company_id
  property :client_id
  property :time_zone_name

  property :avatar_url

  # if user is an administrator, or is self
  property :user_name
  property :uuid
  property :signal_identity_id
  property :token
  property :created_at
  property :updated_at

  # if user is an administrator
  property :administrator
  property :deleted
  property :has_access_to_new_projects
end; end; end; end