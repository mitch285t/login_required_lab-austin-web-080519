class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def current_user
   session[:name]
end 
def hello 
 
  redirect_to '/login' unless session[:name]

end

end