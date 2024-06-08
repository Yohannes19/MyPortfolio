module SetSource
  extend ActiveSupport::Concern
  included do
    before_action  :set_source
  end
  def set_source
    session[:source] = params[:w] if params[:w]
  end
end