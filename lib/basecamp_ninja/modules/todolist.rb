module BasecampNinja; module Modules; module Todolist
  def get_project_todolists(project_id)
    collection = JSON(connection["/projects/#{project_id}/todolists.json"].get)
    collection.map { |object| BasecampNinja::Todolist.new.extend(BasecampNinja::Renderer::Todolist).from_json(object.to_json) }
  rescue Exception => e
    puts "Error: #{e.message}"
    []
  end

  def get_project_todolist(project_id, todolist_id)
    object = JSON(connection["/projects/#{project_id}/todolists/#{todolist_id}.json"].get)
    BasecampNinja::Todolist.new.extend(BasecampNinja::Renderer::Todolist).from_hash(object)
  rescue Exception => e
    puts "Error: #{e.message}"
    nil
  end
end; end; end