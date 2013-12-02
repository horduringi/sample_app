class BoneMarrowTransplantationsController < ApplicationController
  # GET /bone_marrow_transplantations
  # GET /bone_marrow_transplantations.json
  def index
    if request.format == 'csv'
      @bone_marrow_transplantations = BoneMarrowTransplantation.order(:id)
    else
      @bone_marrow_transplantations = BoneMarrowTransplantation.all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bone_marrow_transplantations }
      format.csv { send_data @bone_marrow_transplantations.to_csv({col_sep: ","}) }
    end
  end

  # GET /bone_marrow_transplantations/1
  # GET /bone_marrow_transplantations/1.json
  def show
    @bone_marrow_transplantation = BoneMarrowTransplantation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bone_marrow_transplantation }
    end
  end

  # GET /bone_marrow_transplantations/new
  # GET /bone_marrow_transplantations/new.json
  def new
    @bone_marrow_transplantation = BoneMarrowTransplantation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bone_marrow_transplantation }
    end
  end

  # GET /bone_marrow_transplantations/1/edit
  def edit
    @bone_marrow_transplantation = BoneMarrowTransplantation.find(params[:id])
  end

  # POST /bone_marrow_transplantations
  # POST /bone_marrow_transplantations.json
  def create
    @bone_marrow_transplantation = BoneMarrowTransplantation.new(params[:bone_marrow_transplantation])

    respond_to do |format|
      if @bone_marrow_transplantation.save
        format.html { redirect_to @bone_marrow_transplantation, notice: 'Bone marrow transplantation was successfully created.' }
        format.json { render json: @bone_marrow_transplantation, status: :created, location: @bone_marrow_transplantation }
      else
        format.html { render action: "new" }
        format.json { render json: @bone_marrow_transplantation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bone_marrow_transplantations/1
  # PUT /bone_marrow_transplantations/1.json
  def update
    @bone_marrow_transplantation = BoneMarrowTransplantation.find(params[:id])

    respond_to do |format|
      if @bone_marrow_transplantation.update_attributes(params[:bone_marrow_transplantation])
        format.html { redirect_to @bone_marrow_transplantation, notice: 'Bone marrow transplantation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bone_marrow_transplantation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bone_marrow_transplantations/1
  # DELETE /bone_marrow_transplantations/1.json
  def destroy
    @bone_marrow_transplantation = BoneMarrowTransplantation.find(params[:id])
    @bone_marrow_transplantation.destroy

    respond_to do |format|
      format.html { redirect_to bone_marrow_transplantations_url }
      format.json { head :no_content }
    end
  end
end
