#comment
class Message < ApplicationRecord
  def self.to_hash
    Hash[*all.map { |p| [p.name, p.description] }.flatten]
  end
end
