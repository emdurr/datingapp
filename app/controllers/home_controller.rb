class HomeController < ApplicationController
	skip_before_action :authenticate_user!
  def index
  	if current_user
  		
  	else
  		redirect_to new_profile_path
  	end
  end
end
