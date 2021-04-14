# frozen_string_literal: true

module Api
  module V1
    class SessionsController < ApplicationController
      def login
        @user = User.find_by(session_params)

        return :unauthorized if @user.nil?

        session[:user_id] = @user.id

        render :show
      end

      def me
        return head :unauthorized if session[:user_id].blank?

        @user = User.find_by(id: session[:user_id])
        render :show
      end

      def logout
        reset_session

        head :ok
      end

      private

      def session_params
        params.require(:user).permit(:username, :password)
      end
    end
  end
end
