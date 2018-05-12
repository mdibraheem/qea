class Event < ApplicationRecord
  has_many :packages

  before_save :set_position, on: :create

  def to_s
    name
  end

  private
  def set_position
    self.position ||= Event.maximum(:position).to_i + 1
  end
end
