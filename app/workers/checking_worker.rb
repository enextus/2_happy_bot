# frozen_string_literal: true

require 'active_support/all'
require 'sidekiq'
require 'sidekiq/api' # for the case of rails console

# this worker check the answers from users
class CheckingWorker
  include Sidekiq::Worker

  def perform(beginning_time, end_time, user_chat_id, replay_id)
    sleep 320

    state_button = Statebutton.where(created_at: beginning_time..end_time,
                                     chat_id: user_chat_id)
    return unless state_button.size.positive?

    Request.find_by(id: replay_id)&.update(response: true)
  end
end
