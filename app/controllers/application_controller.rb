class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  layout :set_layout

  def set_layout
    request.xhr? ? 'ajax_title' : 'application'
  end
end
