# frozen_string_literal: true

module Api
  module V1
    class QuizzesController < ApplicationController
      def index
        @quizzes = Quiz.all
        render :index
      end

      def create
        quiz = Quiz.create(quiz_params)

        render json: quiz
      end

      def show
        @quiz = Quiz.find_by!(id: params[:id])

        render :show
      end

      def update
        quiz = Quiz.find_by!(id: params[:id])

        quiz.update!(quiz_params)

        render json: quiz
      end

      def destroy
        quiz = Quiz.find_by!(id: params[:id])

        quiz.destroy!
        render json: quiz
      end

      private

      def quiz_params
        params.require(:quiz).permit(:title)
      end
    end
  end
end
