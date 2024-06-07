class Skill < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :percent_utlized

  after_initialize :defaults
  def defaults
    badge ||= Placeholder.image_generator(height: '250', width: '250')
  end
end
