class GroupEventSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :start_date, :end_date, :duration, :name, :description,
    :markdown_description, :location, :published_at, :deleted_at

  belongs_to :user
end
