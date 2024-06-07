class Portfolio < ApplicationRecord
  validates_presence_of :title ,:body ,:subtitle , :main_image , :thumb_image # input validation for the attributes, listed attributes are manadatory during the insertion of data

  def self.angular
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails_p, -> { where(subtitle: 'Ruby on rails') }  # list portfolios under the subtitle of ruby on rails

  after_initialize :set_defaults # callbacks
  def set_defaults  # this action defines defaults whenever anew portfolio item is created
    self.main_image ||= "https://placehold.co/600x400"  #if self.main_image== nil , then set the default images to the portfolio
    self.thumb_image ||="https://placehold.co/350x200"
  end
end
