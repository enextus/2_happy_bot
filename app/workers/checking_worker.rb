require 'active_support/all'
require 'sidekiq'
require 'sidekiq/api' # for the case of rails console

class CheckingWorker
  include Sidekiq::Worker

  def perform(beginning_time, end_time, user_chat_id, replay_id)

    sleep 100

    state_button = Statebutton.where(:created_at => beginning_time .. end_time, chat_id: user_chat_id)

    if state_button.size > 0
      request_update = Request.find_by(id: replay_id)&.update(response: true)
    else
      false
    end
  end
end
