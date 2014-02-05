module BasecampNinja; module Modules; module Message
  def get_project_messages(project_id)
    get_project_topics(project_id).select { |topic| topic.class_name.eql?("Message") }
  rescue Exception => e
    puts "Error: #{e.message}"
    []
  end

  def get_project_message(project_id, message_id)
    object = JSON(connection["/projects/#{project_id}/messages/#{message_id}.json"].get)
    BasecampNinja::Message.new.extend(BasecampNinja::Renderer::Message).from_hash(object)
  rescue Exception => e
    puts "Error: #{e.message}"
    nil
  end
end; end; end