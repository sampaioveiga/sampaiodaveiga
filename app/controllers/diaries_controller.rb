class DiariesController < ApplicationController
	before_filter :load_patient

	def create
		@diary = @patient.diaries.create(diary_params)
		redirect_to patient_path(@patient)
	end

	def edit
		@diary = @patient.diaries.find(params[:id])
	end

	def update
		@diary = @patient.diaries.find(params[:id])

		if @diary.update_attributes(diary_params)
			redirect_to patient_path(@patient), notice: 'Diario atualizado'
		else
			render action: "edit"
		end
	end

	def destroy
		@diary = @patient.diaries.find(params[:id])
		@diary.destroy

		redirect_to patient_path(@patient), notice: 'Diário apagado'
	end

	private
		def load_patient
			@patient = Patient.find(params[:patient_id])
		end

		def diary_params
			params.require(:diary).permit(:diagnostico, :historial)
		end
end
