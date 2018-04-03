class User < ApplicationRecord
  has_one :chat, dependent: :destroy

  @@answers = [
  # positive
  ', это бесспорно. ',
  ', это предрешено.',
  ', никаких сомнений.',
  ', определённо да!',
  ', можешь быть уверен в этом.',
  # like positive
  ', мне кажется — «да».',
  ', это вероятнее всего.',
  ', хорошие перспективы.',
  ', знаки говорят — «да».',
  ', да!',
  # Neutral
  ', пока не ясно, попробуй снова.',
  ', спроси позже.',
  ', это лучше не рассказывать.',
  ', это сейчас нельзя предсказать.',
  ', сконцентрируйся и спроси опять.',
  # Negative
  ', даже не думай!',
  ', мой ответ — «нет»!',
  ', по моим данным — «нет».',
  ', перспективы не очень хорошие.',
  ', весьма сомнительно.'
].freeze

  def answers
    @@answers
  end
end
