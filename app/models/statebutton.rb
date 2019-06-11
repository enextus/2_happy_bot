class Statebutton < ApplicationRecord
  belongs_to :chat, class_name: 'Chat'

  scope :data_by_chat_id, -> (id) { where(chat_id: id) }
  scope :recent, -> { order(created_at: :desc) }
end
