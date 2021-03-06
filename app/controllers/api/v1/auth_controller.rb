# frozen_string_literal: true

module Api
  module V1
    class AuthController < ApplicationController
      skip_before_action :auth_user

      def create
        @user = User.find_by(login: user_params[:login])
        @token = AuthTokenService.encode(@user.id.to_s)

        render json: { token: @token }
      end

      private

      def user_params
        params.permit(:login, :password)
      end
    end
  end
end
