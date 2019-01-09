class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  has_many :group_events, serializer: GroupEventSerializer
end
