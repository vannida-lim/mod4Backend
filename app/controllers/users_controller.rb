class UsersController < ApplicationController
#  skip_before_action :require_login, only: [:create]
#   def create
#     user = User.create(user_params) 
#     if user.valid?
#         payload = {user_id: user.id}
#         token = encode_token(payload)
#         puts token
#         render json: {user: UserSerializer.new(@user), jwt: token}
#     else
#         render json: {errors: user.errors.full_messages}, status: :not_acceptable
#     end
#   end
def show
    user = User.find(params[:id])
    render json: user, serializer: UserSerializer
end

  private 

  def user_params
    params.permit(:username, :password_digest)
  end

#   def create
#     @user = User.create(user_params)
#     if @user.valid?
#       render json: { user: UserSerializer.new(@user) }, status: :created
#     else
#       render json: { error: 'failed to create user' }, status: :not_acceptable
#     end
#   end
 
#   private
#   def user_params
#     params.require(:user).permit(:username, :password, :bio, :avatar)
#   end
end
