class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
    	t.string	:nome
    	t.date		:data_de_nascimento
    	t.string	:naturalidade
    	t.string	:morada
    	t.string	:localidade
    	t.integer	:codigo_postal
    	t.integer	:codigo_postal_ext
    	t.integer	:telefone
    	t.integer	:telemovel
    	t.string	:profissao
    	t.string	:servico_assistencial
    	t.string	:servico_assistencial_numero
    	t.string	:antecedentes_familiares
    	t.string	:antecedentes_profissionais

      t.timestamps
    end
  end
end
