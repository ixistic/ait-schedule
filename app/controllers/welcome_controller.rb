class WelcomeController < ApplicationController
  def index
    @a = 1/0
    Rails.logger.info "About to divide by 0"
  end
end
