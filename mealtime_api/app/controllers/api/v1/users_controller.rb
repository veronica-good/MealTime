class Api::V1::UsersController < Api::ApplicationController
    def create
        user=User.new params.require(:user).permit(
            :f_name,
            :l_name,
            :email,
            :password,
            :password_confirmation
        )
        if user.save
            session[:user_id]=user.id
            render(json: {id: user.id})
        else
            render(
                json:{errors:user.errors},
                status:422
            )
        end
    end
end
