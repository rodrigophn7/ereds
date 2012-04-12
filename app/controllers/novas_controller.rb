class NovasController < ApplicationController
  # GET /novas
  # GET /novas.json
  def index
    #@novas = Nova.all

    #respond_to do |format|
    #  format.html # index.html.erb
    #  format.json { render json: @novas }
    #end
  end

  # GET /novas/1
  # GET /novas/1.json
  def show
    @nova = Nova.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @nova }
    end
  end

  # GET /novas/new
  # GET /novas/new.json
  def new
    @nova = Nova.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @nova }
    end
  end

  # GET /novas/1/edit
  def edit
    @nova = Nova.find(params[:id])
  end

  # POST /novas
  # POST /novas.json
  def create
    @nova = Nova.new(params[:nova])

    respond_to do |format|
      if @nova.save
        format.html { redirect_to @nova, notice: 'Nova was successfully created.' }
        format.json { render json: @nova, status: :created, location: @nova }
      else
        format.html { render action: "new" }
        format.json { render json: @nova.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /novas/1
  # PUT /novas/1.json
  def update
    @nova = Nova.find(params[:id])

    respond_to do |format|
      if @nova.update_attributes(params[:nova])
        format.html { redirect_to @nova, notice: 'Nova was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @nova.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /novas/1
  # DELETE /novas/1.json
  def destroy
    @nova = Nova.find(params[:id])
    @nova.destroy

    respond_to do |format|
      format.html { redirect_to novas_url }
      format.json { head :no_content }
    end
  end
end
