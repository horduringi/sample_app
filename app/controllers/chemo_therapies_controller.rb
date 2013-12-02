class ChemoTherapiesController < ApplicationController
  # GET /chemo_therapies
  # GET /chemo_therapies.json
  def index
    if request.format == 'csv'
      @chemo_therapies = ChemoTherapy.order(:id)
    else
      @chemo_therapies = ChemoTherapy.all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @chemo_therapies }
      format.csv {send_data @chemo_therapies.to_csv({col_sep: ","}) }
    end
  end

  # GET /chemo_therapies/1
  # GET /chemo_therapies/1.json
  def show
    @chemo_therapy = ChemoTherapy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @chemo_therapy }
    end
  end

  # GET /chemo_therapies/new
  # GET /chemo_therapies/new.json
  def new
    @chemo_therapy = ChemoTherapy.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @chemo_therapy }
    end
  end

  # GET /chemo_therapies/1/edit
  def edit
    @chemo_therapy = ChemoTherapy.find(params[:id])
  end

  # POST /chemo_therapies
  # POST /chemo_therapies.json
  def create
    @chemo_therapy = ChemoTherapy.new(params[:chemo_therapy])

    respond_to do |format|
      if @chemo_therapy.save
        format.html { redirect_to @chemo_therapy, notice: 'Chemo therapy was successfully created.' }
        format.json { render json: @chemo_therapy, status: :created, location: @chemo_therapy }
      else
        format.html { render action: "new" }
        format.json { render json: @chemo_therapy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /chemo_therapies/1
  # PUT /chemo_therapies/1.json
  def update
    @chemo_therapy = ChemoTherapy.find(params[:id])

    respond_to do |format|
      if @chemo_therapy.update_attributes(params[:chemo_therapy])
        format.html { redirect_to @chemo_therapy, notice: 'Chemo therapy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @chemo_therapy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chemo_therapies/1
  # DELETE /chemo_therapies/1.json
  def destroy
    @chemo_therapy = ChemoTherapy.find(params[:id])
    @chemo_therapy.destroy

    respond_to do |format|
      format.html { redirect_to chemo_therapies_url }
      format.json { head :no_content }
    end
  end
end
