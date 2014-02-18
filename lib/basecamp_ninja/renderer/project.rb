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

      property :class_name, default: 'Project'
    end
  end
end
