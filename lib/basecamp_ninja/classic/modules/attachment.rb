module BasecampNinja; module Classic; module Modules; module Attachment
  def get_attachments(project_id)
    collection = Hash.from_xml(connection["/projects/#{project_id}/attachments.xml"].get)["attachments"]
    collection.map { |object| BasecampNinja::Classic::Attachment.new.extend(BasecampNinja::Classic::Renderer::Attachment).from_hash(object) }
  rescue Exception => e
    puts "Error: #{e.message}"
    []
  end
end; end; end; end