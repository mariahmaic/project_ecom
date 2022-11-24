class UsersController < InheritedResources::Base

  private

    def user_params
      params.require(:user).permit(:username, :password, :firstName, :lastName, :email)
    end

end
