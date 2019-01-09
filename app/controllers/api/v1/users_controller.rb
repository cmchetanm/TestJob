module Api::V1
  class UsersController < ApplicationController
    before_action :set_user, only: [:show]

    # GET /users
    def index
      @users = User.all
      render json: @users
    end

    # GET /users/1
    def show
      render json: @user
    end

    private

      def set_user
        @user = User.find_by_id(params[:id])
        unless @user
          redner_unauthorize
        end
      end

      def redner_unauthorize
        render json: {
          errors: ["Record not found in Databas."]
        }.to_json and return
      end

      def user_params
        params.require(:user).permit(:name, :email)
      end
  end
end
