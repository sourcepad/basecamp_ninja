module BasecampNinja; module Classic; module Renderer; module Company
  include Representable::JSON
  
  property :id
  property :name
  property :address_one
  property :address_two
  property :city
  property :state
  property :zip
  property :country
  property :web_address
  property :phone_number_office
  property :phone_number_fax
  property :time_zone_id
  property :can_see_private

  # for non-client companies
  property :url_name
end; end; end; end