module BasecampNinja
  module Modules
    module Topic
      def get_topics
        collection = JSON(connection["/topics.json"].get)
        collection.map { |object| BasecampNinja::Topic.new.extend(BasecampNinja::Renderer::Topic).from_json(object.to_json) }
      rescue Exception => e
        puts "Error: #{e.message}"
        []
      end

      def get_project_topics(project_id)
        collection = JSON(connection["/projects/#{project_id}/topics.json"].get)
        collection.map { |object| BasecampNinja::Topic.new.extend(BasecampNinja::Renderer::Topic).from_json(object.to_json) }
      rescue Exception => e
        puts "Error: #{e.message}"
        []
      end
    end
  end
end