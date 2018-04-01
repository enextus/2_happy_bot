class Chat < ApplicationRecord
 belongs_to :user, class_name: 'User'
 has_many :statebuttons, dependent: :destroy


 # belongs_to :sender, :foreign_key => :sender_id, class_name: 'User'
 # belongs_to :recipient, :foreign_key => :recipient_id, class_name: 'User'

 # has_many :messages, dependent: :destroy

end
