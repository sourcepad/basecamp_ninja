module BasecampNinja; module Modules; module Todo
  def get_project_todos(project_id)
    collection = []
    get_project_todolists(project_id).each do |todolist|
      list = get_project_todolist(project_id, todolist.id)
      collection += list.todos.remaining
      collection += list.todos.completed
    end
    collection
  rescue Exception => e
    puts "Error: #{e.message}"
    []
  end

  def get_project_todo(project_id, todo_id)
    object = JSON(connection["/projects/#{project_id}/todos/#{todo_id}.json"].get)
    BasecampNinja::Todo.new.extend(BasecampNinja::Renderer::Todo).from_hash(object)
  rescue Exception => e
    puts "Error: #{e.message}"
    nil
  end
end; end; end