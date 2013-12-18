module BasecampNinja; module Classic; module Modules; module Message
  def get_post(post_id)
    object = Hash.from_xml(connection["/posts/#{post_id}.xml"].get)["post"]
    BasecampNinja::Classic::Post.new.extend(BasecampNinja::Classic::Renderer::Post).from_hash(object)
  rescue Exception => e
    puts "Error: #{e.message}"
    nil
  end

  def get_posts(project_id)
    collection = Hash.from_xml(connection["/projects/#{project_id}/posts.xml"].get)["posts"]
    collection.map { |object| BasecampNinja::Classic::Post.new.extend(BasecampNinja::Classic::Renderer::Post).from_hash(object) }
  rescue Exception => e
    puts "Error: #{e.message}"
    []
  end
end; end; end; end