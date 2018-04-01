class Statebutton < ApplicationRecord
  belongs_to :chat, class_name: 'Chat'
end
