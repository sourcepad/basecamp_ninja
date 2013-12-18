module BasecampNinja; module Classic; module Renderer; module Account
  include Representable::JSON
  
  property :id
  property :name
  property :account_holder_id
  property :ssl_enabled
  property :email_notification_enabled
  property :time_tracking_enabled
  property :updated_at
  property :subscription, class: BasecampNinja::Classic::Subscription, extend: Renderer::Subscription
  collection :default_attachment_categories, class: BasecampNinja::Classic::Category, extend: Renderer::Category
  collection :default_post_categories, class: BasecampNinja::Classic::Category, extend: Renderer::Category
end; end; end; end