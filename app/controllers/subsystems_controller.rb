class SubsystemsController < ApplicationController
	before_filter :require_login

	def index
		@subsystems = Subsystem.all
	end

	def new
		@subsystem = Subsystem.new
	end

	def create
		@subsystem = Subsystem.new(subsystem_params)
		@subsystem.nome.upcase!

		if @subsystem.save
			redirect_to subsystems_path, notice: "Subsistema criado!"
		else
			render 'new'
		end
	end

	def edit
		@subsystem = Subsystem.find(params[:id])
	end

	def update
		@subsystem = Subsystem.find(params[:id])
		@subsystem.nome.upcase!

		if @subsystem.update_attributes(subsystem_params)
			redirect_to subsystems_path, notice: "Subsistema alterado!"
		else
			render :action => "edit"
		end
	end

	private
	  	def require_login
    		unless logged_in?
    	  		redirect_to log_in_path
    		end
  		end

  		def logged_in?
    		!!current_user
  		end

  		def subsystem_params
			params.require(:subsystem).permit(:nome)
		end
end
