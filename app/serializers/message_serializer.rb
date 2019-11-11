class MessageSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :user_name, :conversation_id, :text, :created_at


end
