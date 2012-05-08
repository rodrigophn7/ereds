class ParticipanteMailer < ActionMailer::Base
  default from: "eredssudeste2012@gmail.com"
  
  def mensagem_confirmacao(participante) 
     @participante = participante
     mail(:to=>participante.email, :subject=>"Confirmacao de Inscricao") do |format|
        format.html
     end
  end
  
end
