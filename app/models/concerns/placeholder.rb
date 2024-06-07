module  Placeholder
  # shared across all the models
  extend ActiveSupport::Concern

  def self.image_generator(height:, width:) # Dyanmic assignment of values across mutiple models
    "https://placehold.co/#{height}x#{width}"
  end
end