class Event < ApplicationRecord
  has_many :packages

  def to_s
    name
  end
end
