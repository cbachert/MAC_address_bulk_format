class ApplicationController < ActionController::Base
# Disable CSRF protection. It relies on cookies which are disabled as the application doesn't make use of sessions
#  protect_from_forgery with: :exception
end
