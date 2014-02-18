module BasecampNinja
  module Modules
    module Project
      def get_project(project_id)
        object = JSON(connection["/projects/#{project_id}.json"].get)
        BasecampNinja::Project.new.extend(BasecampNinja::Renderer::Project).from_hash(object)
      rescue Exception => e
        puts "Error: #{e.message}"
        nil
      end

      def get_projects
        collection = JSON(connection["/projects.json"].get)
        collection.map { |object| BasecampNinja::Project.new.extend(BasecampNinja::Renderer::Project).from_json(object.to_json) }
      rescue Exception => e
        puts "Error: #{e.message}"
        []
      end
    end
  end
end