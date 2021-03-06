class JournalsController < ApplicationController

  def index
    if request.format == 'csv'
      @journals = Journal.order(:id)
    else
      @journals = Journal.all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @journals }
      format.csv { send_data @journals.to_csv({col_sep: "#"}) }
    end
  end
  def create
    @journal = Journal.new(params[:journal])
    gon.journal = @journal
    if params[:commit] == "Add relapse" or params[:commit] == "Next relapse"
      new_params = {:journal => { patient_id: params[:journal][:patient_id], treatment_no: @journal.treatment_no + 1 } }
      redirect_path = new_journal_path(new_params)
      error_new_params = {:journal => { patient_id: params[:journal][:patient_id], treatment_no: @journal.treatment_no } }
      error_redirect_path = new_journal_path(error_new_params)
    else
      redirect_path = "/patients/" + @journal.patient_id.to_s +  "/edit_remission?no_of_treatments=" + @journal.treatment_no.to_s
    end

    @patient_id = params[:journal][:patient_id]
    @treatment_no = params[:journal][:treatment_no]

    respond_to do |format|
      if @journal.save
        format.html { redirect_to redirect_path, notice: 'Journal was successfully created.' }
        format.json { render json: @journal, status: :created, location: @journal }
      else
        #format.html { redirect_to error_redirect_path }
        format.html {render action: "new" }
        format.json { render json: @journal.errors, status: :unprocessable_entity }
      end
    end
  end
  def update
    @journal = Journal.find(params[:id])
    gon.journal = @journal
    
    if params[:commit] == "Add relapse" or params[:commit] == "Next relapse"
      new_params = {:journal => { patient_id: params[:journal][:patient_id], treatment_no: @journal.treatment_no + 1 } }
      redirect_path = new_journal_path(new_params)
      error_new_params = {:journal => { patient_id: params[:journal][:patient_id], treatment_no: @journal.treatment_no } }
      error_redirect_path = new_journal_path(error_new_params)
    else
      redirect_path = "/patients/" + @journal.patient_id.to_s +  "/edit_remission?no_of_treatments=" + @journal.treatment_no.to_s
    end
    
    respond_to do |format|
      if @journal.update_attributes(params[:journal])
        format.html { redirect_to redirect_path }# show.html.erb
        format.json { head :no_content }
      else
        format.html { redirect_to error_redirect_path }
        #format.html { render action: "edit", alert: "Could not be saved, because of errors in the form." }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
      
    end
  end
  def show
    @journal = Journal.find(params[:id])
    gon.journal = @journal
    respond_to do |format|
      format.html #{ render "form/show" }# show.html.erb
      format.json { render json: @journal }
    end
  end
  def new
    #check if one exists
    j = Journal.where(patient_id: params[:journal][:patient_id]).where(treatment_no: params[:journal][:treatment_no]).first
    if j
      @journal = j
    else
      @journal = Journal.new
    end
    gon.journal = @journal
    if !@patient_id
      @patient_id = params[:journal][:patient_id]
      @treatment_no = params[:journal][:treatment_no]
    end
    # Where there is possible to add there should be one by default
    #@bone_marrow_transplantation = BoneMarrowTransplantation.create(journal_id: @journal.id)
    #ChemoTherapy.create(journal_id: @journal.id)
    #CytostaticDrugGiven.create(journal_id: @journal.id, chemoorbonemarrow: 1)
    #CytostaticDrugGivenBoneMarrow.create(journal_id: @journal.id, bone_marrow_transplantation_id: @bone_marrow_transplantation.id, chemoorbonemarrow: 2)
    #Surgery.create(journal_id: @journal.id)

    respond_to do |format|
      format.html # new.html.erb
      #format.json { render json: @journal }
    end
  end
  def edit
    @journal = Journal.find(params[:id])
    gon.journal = @journal
    respond_to do |format|
      format.html #{ render "form/show" }# show.html.erb
      format.json { render json: @journal }
    end
  end
  def edit_relapse
    @journal = Journal.find(params[:id])
    gon.journal = @journal
    respond_to do |format|
      format.html { render "journal/show" }#{ render "form/show" }# show.html.erb
      format.json { render json: @journal }
    end
  end
end
