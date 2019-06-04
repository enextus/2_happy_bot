class Statebutton < ApplicationRecord
  belongs_to :chat, class_name: 'Chat'

  scope :data_of_chat_id_1, -> { where(chat_id: 1) }
  scope :data_of_chat_id_2, -> { where(chat_id: 2) }
  scope :data_of_chat_id_3, -> { where(chat_id: 3..100) }

  scope :recent, -> { order(created_at: :desc) }
end
