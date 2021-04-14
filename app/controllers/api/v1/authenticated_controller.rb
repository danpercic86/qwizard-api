# frozen_string_literal: true

module Api
  module V1
    class AuthenticatedController < ApplicationController
      # skip_before_action :require_authentication, only: [:index]]
      before_action :require_authentication # , except: [:index] / only: [:index]

      private

      def require_authentication
        head :unauthorized if session[:user_id].nil?
      end

      def current_user
        User.find(session[:user_id])
      end
    end
  end
end
