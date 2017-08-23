class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    if user_signed_in?
      redirect_to polls_path
    else
      redirect_to new_user_session_url
    end
  end
end
