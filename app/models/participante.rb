class Participante < ActiveRecord::Base
  has_one :hospedarium

  validates_format_of :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :message => ' invalido'

  validate :valida_cpf

  def valida_cpf
    # se o cpf for informado, valida.
    if !self.cpf.blank?
      doc = Cpf.new(self.cpf)
      errors.add(:cpf, "invalido") if !doc.valido?
    end
  end

  validates_presence_of :nome, :telefone, :email, :cpf, :rg, :sexo, :endereco, :cidade, :estado, :como_conheceu, :ja_participou, :universidade, :message=>" nao pode ser vazio."

  validates_numericality_of :cpf, :rg, :only_integer=>true, :message=>' so pode ter numero'

end
