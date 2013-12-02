class CytostaticDrugGivensController < ApplicationController
  # GET /cytostatic_drug_givens
  # GET /cytostatic_drug_givens.json
  def index
    if request.format == 'csv'
      @cytostatic_drug_givens = CytostaticDrugGiven.order(:id)
    else
      @cytostatic_drug_givens = CytostaticDrugGiven.all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cytostatic_drug_givens }
      format.csv { send_data @cytostatic_drug_givens.to_csv({col_sep: ","}) }
    end
  end

  # GET /cytostatic_drug_givens/1
  # GET /cytostatic_drug_givens/1.json
  def show
    @cytostatic_drug_given = CytostaticDrugGiven.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cytostatic_drug_given }
    end
  end

  # GET /cytostatic_drug_givens/new
  # GET /cytostatic_drug_givens/new.json
  def new
    @cytostatic_drug_given = CytostaticDrugGiven.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cytostatic_drug_given }
    end
  end

  # GET /cytostatic_drug_givens/1/edit
  def edit
    @cytostatic_drug_given = CytostaticDrugGiven.find(params[:id])
  end

  # POST /cytostatic_drug_givens
  # POST /cytostatic_drug_givens.json
  def create
    @cytostatic_drug_given = CytostaticDrugGiven.new(params[:cytostatic_drug_given])

    respond_to do |format|
      if @cytostatic_drug_given.save
        format.html { redirect_to @cytostatic_drug_given, notice: 'Cytostatic drug given was successfully created.' }
        format.json { render json: @cytostatic_drug_given, status: :created, location: @cytostatic_drug_given }
      else
        format.html { render action: "new" }
        format.json { render json: @cytostatic_drug_given.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cytostatic_drug_givens/1
  # PUT /cytostatic_drug_givens/1.json
  def update
    @cytostatic_drug_given = CytostaticDrugGiven.find(params[:id])

    respond_to do |format|
      if @cytostatic_drug_given.update_attributes(params[:cytostatic_drug_given])
        format.html { redirect_to @cytostatic_drug_given, notice: 'Cytostatic drug given was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cytostatic_drug_given.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cytostatic_drug_givens/1
  # DELETE /cytostatic_drug_givens/1.json
  def destroy
    @cytostatic_drug_given = CytostaticDrugGiven.find(params[:id])
    @cytostatic_drug_given.destroy

    respond_to do |format|
      format.html { redirect_to cytostatic_drug_givens_url }
      format.json { head :no_content }
    end
  end
end
