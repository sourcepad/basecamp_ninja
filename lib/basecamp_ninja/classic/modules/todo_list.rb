module BasecampNinja; module Classic; module Modules; module TodoList
  def get_todo_list(id)
    object = Hash.from_xml(connection["/todo_lists/#{id}.xml"].get)["todo_list"]
    BasecampNinja::Classic::TodoList.new.extend(BasecampNinja::Classic::Renderer::TodoList).from_hash(object)
  rescue Exception => e
    puts "Error: #{e.message}"
    nil
  end

  def get_todo_lists(project_id = nil)
    url = project_id.present? ? "/projects/#{project_id}/todo_lists.xml" : "/todo_lists.xml"
    collection = Hash.from_xml(connection[url].get)["todo_lists"]
    collection.map { |object| BasecampNinja::Classic::TodoList.new.extend(BasecampNinja::Classic::Renderer::TodoList).from_hash(object) }
  rescue Exception => e
    puts "Error: #{e.message}"
    []
  end
end; end; end; end