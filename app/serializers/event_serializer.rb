class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :event_type, :description, :image, :address, :organizer
end
