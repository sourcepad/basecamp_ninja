module BasecampNinja; module Classic; module Modules; module Person
  def get_person(person_id)
    object = Hash.from_xml(connection["/people/#{person_id}.xml"].get)["person"]
    BasecampNinja::Classic::Person.new.extend(BasecampNinja::Classic::Renderer::Person).from_hash(object)
  rescue Exception => e
    puts "Error: #{e.message}"
    nil
  end

  def get_current_person
    object = Hash.from_xml(connection["/me.xml"].get)["person"]
    BasecampNinja::Classic::Person.new.extend(BasecampNinja::Classic::Renderer::Person).from_hash(object)
  rescue Exception => e
    puts "Error: #{e.message}"
    nil
  end
end; end; end; end