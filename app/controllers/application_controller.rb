class ApplicationController < ActionController::Base
  
  include Pagy::Backend
  
  def user_for_paper_trail
    logged_in? ? current_member.id : 'Public user'  # or whatever
  end
end
