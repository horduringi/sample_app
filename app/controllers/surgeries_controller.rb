class SurgeriesController < ApplicationController
  # GET /surgeries
  # GET /surgeries.json
  def index
    @surgeries = Surgery.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @surgeries }
    end
  end

  # GET /surgeries/1
  # GET /surgeries/1.json
  def show
    @surgery = Surgery.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @surgery }
    end
  end

  # GET /surgeries/new
  # GET /surgeries/new.json
  def new
    @surgery = Surgery.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @surgery }
    end
  end

  # GET /surgeries/1/edit
  def edit
    @surgery = Surgery.find(params[:id])
  end

  # POST /surgeries
  # POST /surgeries.json
  def create
    @surgery = Surgery.new(params[:surgery])

    respond_to do |format|
      if @surgery.save
        format.html { redirect_to @surgery, notice: 'Surgery was successfully created.' }
        format.json { render json: @surgery, status: :created, location: @surgery }
      else
        format.html { render action: "new" }
        format.json { render json: @surgery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /surgeries/1
  # PUT /surgeries/1.json
  def update
    @surgery = Surgery.find(params[:id])

    respond_to do |format|
      if @surgery.update_attributes(params[:surgery])
        format.html { redirect_to @surgery, notice: 'Surgery was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @surgery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surgeries/1
  # DELETE /surgeries/1.json
  def destroy
    @surgery = Surgery.find(params[:id])
    @surgery.destroy

    respond_to do |format|
      format.html { redirect_to surgeries_url }
      format.json { head :no_content }
    end
  end
end
