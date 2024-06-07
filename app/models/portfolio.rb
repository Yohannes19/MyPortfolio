class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies, reject_if: ->(attrs) { attrs['name'].blank? } # allows for single portfolio to accept many technologies
  
  include Placeholder
  validates_presence_of :title ,:body , :main_image , :thumb_image # input validation for the attributes, listed attributes are manadatory during the insertion of data

  def self.angular
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails_p, -> { where(subtitle: 'Ruby on rails') }  # list portfolios under the subtitle of ruby on rails

  after_initialize :set_defaults # callbacks
  def set_defaults  # this action defines defaults whenever anew portfolio item is created
    self.main_image ||= Placeholder.image_generator(height: '650', width: '300') #if self.main_image== nil , then set the default images to the portfolio
    self.thumb_image ||= Placeholder.image_generator(height: '250', width: '250')
  end
end
