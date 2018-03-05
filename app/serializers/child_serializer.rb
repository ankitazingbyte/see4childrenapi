class ChildSerializer < ActiveModel::Serializer
	include Rails.application.routes.url_helpers
  attributes :id, :name, :child_code, :gender, :image, :dob, :education, :hobby, :school, :links

  def links
    {
      self: child_path(object.id)
    }
  end
end
