class ApplicationController < ActionController::API
  
  include DeviseTokenAuth::Concerns::SetUserByToken
  rescue_from ActiveRecord::RecordNotFound, with: :render_active_record_error
end
