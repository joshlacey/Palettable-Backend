class PalateSerializer < ActiveModel::Serializer
  #belongs_to :user
  attributes :id, :data, :creator

  def creator
    User.find_by(id: object.user_id).username
  end
end
