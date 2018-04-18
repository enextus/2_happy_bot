require "active_support/all"
require 'sidekiq'

class ReplayCheckWorker

  include Sidekiq::Worker

  def perform(start_date, end_date, replay_id)

    sleep 100

     p start_date
     p end_date
     p replay_id

     # binding.pry

     # params = { start_date: start_date, end_date: end_date }
     # sb = Statebutton.where("created_at >= :start_date AND created_at <= :end_date", { start_date: params[:start_date], end_date: params[:end_date] })

  end
end
