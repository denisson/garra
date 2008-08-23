# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => 'e73f94a45245cd729f4a953355a7cd31'

  include AuthenticatedSystem
  
  before_filter :get_pages_for_tabs
  
  def get_pages_for_tabs
    if logged_in?
      @tabs = Page.find_main
    else
      @tabs = Page.find_main_public
    end
  end
  
end
