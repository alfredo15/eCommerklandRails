class ApplicationController < ActionController::Base
  before_action :set_locale

  def set_locale
    I18n.locale = params[:locale]
  end

  def self.default_url_options(options = {})
    options.merge({:locale => I18n.locale})
  end

end
