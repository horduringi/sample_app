class CytostaticDrugGivenBoneMarrowsController < ApplicationController
  # GET /cytostatic_drug_given_bone_marrows
  # GET /cytostatic_drug_given_bone_marrows.json
  def index
    @cytostatic_drug_given_bone_marrows = CytostaticDrugGivenBoneMarrow.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cytostatic_drug_given_bone_marrows }
    end
  end

  # GET /cytostatic_drug_given_bone_marrows/1
  # GET /cytostatic_drug_given_bone_marrows/1.json
  def show
    @cytostatic_drug_given_bone_marrow = CytostaticDrugGivenBoneMarrow.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cytostatic_drug_given_bone_marrow }
    end
  end

  # GET /cytostatic_drug_given_bone_marrows/new
  # GET /cytostatic_drug_given_bone_marrows/new.json
  def new
    @cytostatic_drug_given_bone_marrow = CytostaticDrugGivenBoneMarrow.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cytostatic_drug_given_bone_marrow }
    end
  end

  # GET /cytostatic_drug_given_bone_marrows/1/edit
  def edit
    @cytostatic_drug_given_bone_marrow = CytostaticDrugGivenBoneMarrow.find(params[:id])
  end

  # POST /cytostatic_drug_given_bone_marrows
  # POST /cytostatic_drug_given_bone_marrows.json
  def create
    @cytostatic_drug_given_bone_marrow = CytostaticDrugGivenBoneMarrow.new(params[:cytostatic_drug_given_bone_marrow])

    respond_to do |format|
      if @cytostatic_drug_given_bone_marrow.save
        format.html { redirect_to @cytostatic_drug_given_bone_marrow, notice: 'Cytostatic drug given bone marrow was successfully created.' }
        format.json { render json: @cytostatic_drug_given_bone_marrow, status: :created, location: @cytostatic_drug_given_bone_marrow }
      else
        format.html { render action: "new" }
        format.json { render json: @cytostatic_drug_given_bone_marrow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cytostatic_drug_given_bone_marrows/1
  # PUT /cytostatic_drug_given_bone_marrows/1.json
  def update
    @cytostatic_drug_given_bone_marrow = CytostaticDrugGivenBoneMarrow.find(params[:id])

    respond_to do |format|
      if @cytostatic_drug_given_bone_marrow.update_attributes(params[:cytostatic_drug_given_bone_marrow])
        format.html { redirect_to @cytostatic_drug_given_bone_marrow, notice: 'Cytostatic drug given bone marrow was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cytostatic_drug_given_bone_marrow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cytostatic_drug_given_bone_marrows/1
  # DELETE /cytostatic_drug_given_bone_marrows/1.json
  def destroy
    @cytostatic_drug_given_bone_marrow = CytostaticDrugGivenBoneMarrow.find(params[:id])
    @cytostatic_drug_given_bone_marrow.destroy

    respond_to do |format|
      format.html { redirect_to cytostatic_drug_given_bone_marrows_url }
      format.json { head :no_content }
    end
  end
end
