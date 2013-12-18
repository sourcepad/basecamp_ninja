module BasecampNinja; module Classic; module Modules; module Project
  def get_project(project_id)
    object = Hash.from_xml(connection["/projects/#{project_id}.xml"].get)["project"]
    BasecampNinja::Classic::Project.new.extend(BasecampNinja::Classic::Renderer::Project).from_hash(object)
  rescue Exception => e
    puts "Error: #{e.message}"
    nil
  end

  def get_projects
    collection = Hash.from_xml(connection["/projects.xml"].get)["projects"]
    collection.map { |object| BasecampNinja::Classic::Project.new.extend(BasecampNinja::Classic::Renderer::Project).from_hash(object) }
  rescue Exception => e
    puts "Error: #{e.message}"
    []
  end
end; end; end; end