class RelapsesController < ApplicationController
  # GET /relapses
  # GET /relapses.json
  def index
    @relapses = Relapse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @relapses }
    end
  end

  # GET /relapses/1
  # GET /relapses/1.json
  def show
    @relapse = Relapse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @relapse }
    end
  end

  # GET /relapses/new
  # GET /relapses/new.json
  def new
    @relapse = Relapse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @relapse }
    end
  end

  # GET /relapses/1/edit
  def edit
    @relapse = Relapse.find(params[:id])
  end

  # POST /relapses
  # POST /relapses.json
  def create
    @relapse = Relapse.new(params[:relapse])

    respond_to do |format|
      if @relapse.save
        format.html { redirect_to @relapse, notice: 'Relapse was successfully created.' }
        format.json { render json: @relapse, status: :created, location: @relapse }
      else
        format.html { render action: "new" }
        format.json { render json: @relapse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /relapses/1
  # PUT /relapses/1.json
  def update
    @relapse = Relapse.find(params[:id])

    respond_to do |format|
      if @relapse.update_attributes(params[:relapse])
        format.html { redirect_to @relapse, notice: 'Relapse was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @relapse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relapses/1
  # DELETE /relapses/1.json
  def destroy
    @relapse = Relapse.find(params[:id])
    @relapse.destroy

    respond_to do |format|
      format.html { redirect_to relapses_url }
      format.json { head :no_content }
    end
  end
end
