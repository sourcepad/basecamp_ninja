module BasecampNinja
  module Renderer
    module Person
      include Representable::JSON

      property :id
      property :identity_id
      property :name
      property :email_address
      property :admin
      property :avatar_url
      property :created_at
      property :updated_at
      property :url
    end
  end
end