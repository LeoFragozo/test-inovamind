# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApplicationController
      skip_before_action :auth_user, only: [:create]
      def create
        @user = User.create!(user_params)
        render json: { message: 'Login criado com sucesso' }, status: :created
      end

      private

      def user_params
        params.permit(:login, :password)
      end
    end
  end
end
