class Chat < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :statebuttons, dependent: :destroy
end
