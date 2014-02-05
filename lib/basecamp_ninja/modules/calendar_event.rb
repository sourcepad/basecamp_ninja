module BasecampNinja; module Modules; module CalendarEvent
  def get_project_calendar_events(project_id)
    collection = JSON(connection["/projects/#{project_id}/calendar_events.json"].get)
    collection.map { |object| BasecampNinja::CalendarEvent.new.extend(BasecampNinja::Renderer::CalendarEvent).from_json(object.to_json) }
  rescue Exception => e
    puts "Error: #{e.message}"
    []
  end

  def get_project_calendar_event(project_id, calendar_event_id)
    object = JSON(connection["/projects/#{project_id}/calendar_events/#{calendar_event_id}.json"].get)
    BasecampNinja::CalendarEvent.new.extend(BasecampNinja::Renderer::CalendarEvent).from_hash(object)
  rescue Exception => e
    puts "Error: #{e.message}"
    nil
  end
end; end; end