class PatientsController < ApplicationController
	before_filter :require_login

	def index
		@patients = Patient.paginate(page: params[:page]).order(:nome)
	end

	def show
		@patient = Patient.find(params[:id])
		@patient.antecedentes_pessoais ||= "Não há registo"
		@patient.antecedentes_familiares ||= "Não há registo"
		@patient.historial ||= "Não há registo"
		@patient.diagnostico ||= "Não há registo"
	end

	def new
		@patient = Patient.new
		@patient.naturalidade ||= "Portuguesa"
		@patient.localidade ||= "Bragança"
		@patient.codigo_postal ||= 5300
	end

	def create
		@patient = Patient.new(patient_params)

		if @patient.save
			redirect_to @patient, notice: "Ficha criada!"
		else
			render :action => "new"
		end
	end

	def edit
		@patient = Patient.find(params[:id])
	end

	def legacy
		@patient = Patient.find(params[:id])
	end

	def first
		@patient = Patient.find(params[:id])
	end

	def update
		@patient = Patient.find(params[:id])

		if @patient.update_attributes(patient_params)
			redirect_to @patient, notice: "Ficha alterada!"
		else
			render :action => "edit"
		end
	end

	def destroy
		@patient = Patient.find(params[:id])
    	@patient.destroy

    	redirect_to patients_url, notice: 'Ficha eliminada!'
	end

	def search
		@patients = Patient.where("nome LIKE :prefix", prefix: "%#{params[:search_string]}%")
		#@patients = Patient.where("nome LIKE :prefix", prefix: "%#{params[:search_string].capitalize!}%")
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

  		def patient_params
  			params.require(:patient).permit(:nome, :data_de_nascimento, :naturalidade, :morada, :localidade, :codigo_postal, :codigo_postal_ext, :contacto, :rnu, :profissao, :servico_assistencial, :servico_assistencial_numero, :antecedentes_familiares, :antecedentes_pessoais, :historial, :diagnostico, :subsystem_id)
  		end
end
