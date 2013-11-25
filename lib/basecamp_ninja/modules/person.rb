module BasecampNinja
  module Modules
    module Person
      def get_person(person_id)
        object = JSON(connection["/people/#{person_id}.json"].get)
        BasecampNinja::Person.new.extend(BasecampNinja::Renderer::Person).from_hash(object)
      rescue Exception => e
        puts "Error: #{e.message}"
        nil
      end

      def get_current_person
        self.get_person('me')
      end
    end
  end
end