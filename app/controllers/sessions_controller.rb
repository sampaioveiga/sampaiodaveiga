class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by_email(params[:email])  
  		
  		if user && user.authenticate(params[:password]) && user.ativo
    		session[:user_id] = user.id  
    		redirect_to root_url, notice: "Bemvindo, #{user.nome}"  
  		else
  			flash.now[:error] = "Credenciais erradas"
  			render 'new'
  		end  
  	end

	def destroy
		session[:user_id] = nil
		redirect_to log_in_path, notice: 'Sessão terminada'
	end
end
