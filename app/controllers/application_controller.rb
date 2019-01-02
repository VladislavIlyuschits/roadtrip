# frozen_string_literal: true

class ApplicationController < ActionController::Base
  private

  def after_sign_in_path_for_user(_resource)
    current_user.tours.empty? ? interests_path : tours_path(interest_id: current_user.interests.last.id)
  end

  def after_sign_in_path_for(resource)
    current_user.admin ? admin_root_path : after_sign_in_path_for_user(resource)
  end
end
