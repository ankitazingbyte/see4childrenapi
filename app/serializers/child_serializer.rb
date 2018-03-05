class ChildSerializer < ActiveModel::Serializer
  attributes :id, :name, :child_code, :gender, :image, :dob, :education, :hobby, :school
end
