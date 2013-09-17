class UsersController < ApplicationController
	# basic auth

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		@user.email.downcase!

		if @user.save
			redirect_to log_in_path, notice: 'Utilizador registado com sucesso.'
		else
			render 'new'
		end
	end

	private
		def user_params
			params.require(:user).permit(:nome, :email, :password, :password_confirmation)
		end
end