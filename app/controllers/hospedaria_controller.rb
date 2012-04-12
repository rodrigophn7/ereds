class HospedariaController < ApplicationController
  # GET /hospedaria
  # GET /hospedaria.json
  def index
    #@hospedaria = Hospedarium.all

    #respond_to do |format|
    #  format.html # index.html.erb
    #  format.json { render json: @hospedaria }
    #end
  end

  # GET /hospedaria/1
  # GET /hospedaria/1.json
  def show
    @hospedarium = Hospedarium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hospedarium }
    end
  end

  # GET /hospedaria/new
  # GET /hospedaria/new.json
  def new
    @hospedarium = Hospedarium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hospedarium }
    end
  end

  # GET /hospedaria/1/edit
  def edit
    @hospedarium = Hospedarium.find(params[:id])
  end

  # POST /hospedaria
  # POST /hospedaria.json
  def create
    @hospedarium = Hospedarium.new(params[:hospedarium])

    respond_to do |format|
      if @hospedarium.save
        format.html { redirect_to @hospedarium, notice: 'Hospedarium was successfully created.' }
        format.json { render json: @hospedarium, status: :created, location: @hospedarium }
      else
        format.html { render action: "new" }
        format.json { render json: @hospedarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hospedaria/1
  # PUT /hospedaria/1.json
  def update
    @hospedarium = Hospedarium.find(params[:id])

    respond_to do |format|
      if @hospedarium.update_attributes(params[:hospedarium])
        format.html { redirect_to @hospedarium, notice: 'Hospedarium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hospedarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hospedaria/1
  # DELETE /hospedaria/1.json
  def destroy
    @hospedarium = Hospedarium.find(params[:id])
    @hospedarium.destroy

    respond_to do |format|
      format.html { redirect_to hospedaria_url }
      format.json { head :no_content }
    end
  end
end
