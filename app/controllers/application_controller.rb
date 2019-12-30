class ApplicationController < ActionController::Base
  config.exceptions_app = self.routes
end
