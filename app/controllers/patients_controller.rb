class PatientsController < ApplicationController
  # GET /patients
  # GET /patients.json
  def index
    if request.format == 'csv'
      @patients = Patient.where(is_done: true).order(:studynumber)
    else
      @patients = Patient.all
    end
    respond_to do |format|
      format.html # index.html.erb
      format.csv { send_data @patients.to_csv({col_sep: "#"}) }
      format.json { render json: @patients }
    end
  end

  # GET /patients/1
  # GET /patients/1.json
  def show
    @patient = Patient.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @patient }
    end
  end

  # GET /patients/new
  # GET /patients/new.json
  def new
    @patient = Patient.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @patient }
    end
  end

  # GET /patients/1/edit
  def edit
    @patient = Patient.find(params[:id])
    @patient.user_id = current_user.id
    #@patient.save
    gon.patient = @patient
  end

  def edit_remission
    @patient = Patient.find(params[:id])
    @no_of_treatments = params[:no_of_treatments]
    gon.patient = @patient
  end

  # POST /patients
  # POST /patients.json
  def create
    @patient = Patient.new(params[:patient])

    respond_to do |format|
      if @patient.save
        format.html { redirect_to '/', notice: 'Patient was successfully created.' }
        format.json { render json: @patient, status: :created, location: @patient }
      else
        format.html { redirect_to '/', notice: 'Error. Patient was not created.' }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /patients/1
  # PUT /patients/1.json
  def update
    @patient = Patient.find(params[:id])
    new_params = {:journal => { patient_id: params[:id], treatment_no: 1 } }
    if params[:commit] == "Next"
      redirect_path = new_journal_path(new_params)
      action_path = "edit"
    else
      redirect_path = "/"
      action_path = "edit_remission"
    end
    #@patient.user_id = current_user.id
    #@patient.save
    #params_copy = params
    #params_copy.merge(params_copy){|k, v| v.nil? ? 0 : v}

    #gon.patient = params_copy[:patient]

    respond_to do |format|
      if @patient.update_attributes(params[:patient])
        format.html { redirect_to redirect_path }
        format.json { head :no_content }
      else
        format.html { render action: action_path }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  def destroy
    #Patient.where(country: 5).destroy_all

    @patient = Patient.find(params[:patient][:id])
    @patient.destroy

    #@journals = Journal.where(patient_id: params[:patient][:id])
    #for @j in @journals
    #  @j.destroy

    respond_to do |format|
      format.html { redirect_to '/'}
      format.json { head :no_content }
    end
  end
end
