module BasecampNinja; module Modules; module Attachment
  def get_attachments
    collection = JSON(connection["/attachments.json"].get)
    collection.map { |object| BasecampNinja::Attachment.new.extend(BasecampNinja::Renderer::Attachment).from_json(object.to_json) }
  rescue Exception => e
    puts "Error: #{e.message}"
    []
  end

  def get_project_attachments(project_id)
    collection = JSON(connection["/projects/#{project_id}/attachments.json"].get)
    collection.map { |object| BasecampNinja::Attachment.new.extend(BasecampNinja::Renderer::Attachment).from_json(object.to_json) }
  rescue Exception => e
    puts "Error: #{e.message}"
    []
  end

  def get_project_attachment(project_id, attachment_id)
    object = JSON(connection["/projects/#{project_id}/attachments/#{attachment_id}.json"].get)
    BasecampNinja::Attachment.new.extend(BasecampNinja::Renderer::Attachment).from_hash(object)
  rescue Exception => e
    puts "Error: #{e.message}"
    nil
  end
end; end; end