module BasecampNinja; module Classic; module Modules; module TodoItem
  def get_todo_item(id)
    object = Hash.from_xml(connection["/todo_items/#{id}.xml"].get)["todo_item"]
    BasecampNinja::Classic::TodoItem.new.extend(BasecampNinja::Classic::Renderer::TodoItem).from_hash(object)
  rescue Exception => e
    puts "Error: #{e.message}"
    nil
  end

  def get_todo_items(todo_list_id)
    collection = Hash.from_xml(connection["/todo_lists/#{todo_list_id}/todo_items.xml"].get)["todo_items"]
    collection.map { |object| BasecampNinja::Classic::TodoItem.new.extend(BasecampNinja::Classic::Renderer::TodoItem).from_hash(object) }
  rescue Exception => e
    puts "Error: #{e.message}"
    []
  end
end; end; end; end