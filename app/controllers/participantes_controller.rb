class ParticipantesController < ApplicationController
  before_filter :check_logged_in, :only => [:edit, :update, :destroy, :index]

  def select
    @hospedarium = Hospedarium.find(params[:hospedarium_id])
    @participante = Participante.find(params[:id])
    @participante.hospedarium_id = @hospedarium.id
    @hospedarium.qtd_vagas -= 1;  
    if @participante.save and @hospedarium.save
      respond_to do |format|
        format.html {
          redirect_to '/participantes/confirmacao', :notice => "Hospedaria #{@hospedarium.nome} escolhida com sucesso!", :locals=> {:participante=>@participante} 
        }
      end
    end 
  end

  # GET /participantes
  # GET /participantes.json
  def index
    @participantes = Participante.select("DISTINCT ON (cpf) *")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @participantes }
    end
  end

  # GET /participantes/1
  # GET /participantes/1.json
  def show
    @participante = Participante.find(params[:id])
    @sexos = {"Feminino" =>"Mulheres", "Masculino" => "Homens"}
    @hospedaria = Hospedarium.find(:all, :conditions=>[ 'preferencia = ? and qtd_vagas > 0 or preferencia = ?', @sexos[@participante.sexo], 'Ambos'])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @participante }
    end
  end

  # GET /participantes/new
  # GET /participantes/new.json
  def new
    @participante = Participante.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @participante }
    end
  end

  # GET /participantes/1/edit
  def edit
    @participante = Participante.find(params[:id])
  end

  # POST /participantes
  # POST /participantes.json
  def create
    @participante = Participante.new(params[:participante])
  
    respond_to do |format|
      if @participante.save
        ParticipanteMailer.mensagem_confirmacao(@participante).deliver
        format.html { redirect_to @participante, notice: 'Inscricao realizada com sucesso.', locals: {:sexos=>@sexos} }
        format.json { render json: @participante, status: :created, location: @participante }
      else
        format.html { render action: "new" }
        format.json { render json: @participante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /participantes/1
  # PUT /participantes/1.json
  def update
    @participante = Participante.find(params[:id])

    respond_to do |format|
      if @participante.update_attributes(params[:participante])
        format.html { redirect_to @participante, notice: 'Participante was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @participante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /participantes/1
  # DELETE /participantes/1.json
  def destroy
    @participante = Participante.find(params[:id])
    @participante.destroy

    respond_to do |format|
      format.html { redirect_to participantes_url }
      format.json { head :no_content }
    end
  end

private
  def to_md5(valor)
      Digest::MD5.hexdigest valor
  end

private
  def check_logged_in
    authenticate_or_request_with_http_basic("Participantes") do |username, password|
      username == "admin" && password == "eredscefetrural"
    end
  end
end
