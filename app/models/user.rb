class User < ApplicationRecord
    has_one :chat, dependent: :destroy

    @@answers = [
    # positive
    ', It is certain. ',
    ', It is decidedly so.',
    ', Without a doubt.',
    ', Yes — definitely!',
    ', You may rely on it.',
    # like positive
    ', As I see it, yes.',
    ', Most likely.',
    ', Outlook good.',
    ', Signs point to yes.',
    ', Yes!',
    # Neutral
    ', Reply hazy, try again.',
    ', Ask again later.',
    ', Better not tell you now.',
    ', Cannot predict now.',
    ', Concentrate and ask again.',
    # Negative
    ', Don’t count on it!',
    ', My reply is no!',
    ', My sources say no.',
    ', Outlook not so good.',
    ', Very doubtful.'
  ].freeze

  def self.answers
		@@answers
	end
end
