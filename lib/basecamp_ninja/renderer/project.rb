module BasecampNinja
  module Renderer
    module Project
      include Representable::JSON

      property :id
      property :name
      property :description
      property :updated_at
      property :url
      property :archived
      property :starred
    end
  end
end
