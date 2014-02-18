module BasecampNinja; module Classic; module Modules; module CalendarEntry
  def get_calendar_entry(project_id, id)
    object = Hash.from_xml(connection["/projects/#{project_id}/calendar_entries/#{id}.xml"].get)["calendar_entry"]
    BasecampNinja::Classic::CalendarEntry.new.extend(BasecampNinja::Classic::Renderer::CalendarEntry).from_hash(object)
  rescue Exception => e
    puts "Error: #{e.message}"
    nil
  end

  def get_calendar_entries(project_id)
    collection = Hash.from_xml(connection["/projects/#{project_id}/calendar_entries.xml"].get)["calendar_entries"]
    collection.map { |object| BasecampNinja::Classic::CalendarEntry.new.extend(BasecampNinja::Classic::Renderer::CalendarEntry).from_hash(object) }
  rescue Exception => e
    puts "Error: #{e.message}"
    []
  end
end; end; end; end