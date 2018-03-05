class EventSerializer < ActiveModel::Serializer
	include Rails.application.routes.url_helpers
  attributes :id, :name, :event_type, :description, :image, :address, :organizer, :links

  def links
    {
      self: event_path(object.id)
    }
  end
end
