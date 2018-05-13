class Event < ApplicationRecord
  has_many :packages

  before_save :set_position, on: :create

  scope :ordered, -> { order(:position) }

  def to_s
    name
  end

  def self.sort(ids)
    old_positions = pluck(:id, :position).to_h
    ids.each_with_index do |id, i|
      where(id: id).update_all(position: i + 1) unless old_positions[id] == i + 1
    end
  end

  private
  def set_position
    self.position ||= self.class.maximum(:position).to_i + 1
  end
end
