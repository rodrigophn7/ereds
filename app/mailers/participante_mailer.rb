class ParticipanteMailer < ActionMailer::Base
  default from: "eredssudeste2012@gmail.com"
  
  def mensagem_confirmacao(participante)
     @participante = participante
     @site = "http://eredssudeste2012.heroku.com" 
     mail(:to=>participante.email, :subject=>"Confirmacao de Inscricao", :text=>@text)
  end
  
end
