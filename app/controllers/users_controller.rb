class UsersController < ApplicationController
	http_basic_authenticate_with name: "root", password: "toor"

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		@user.email.downcase!
		@user.ativo = false

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
