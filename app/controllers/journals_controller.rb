class JournalsController < ApplicationController

  def index
    @journals = Journal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @journals }
    end
  end
  def create
    @journal = Journal.new(params[:journal])
    if params[:commit] == "Add relapse"
      redirect_path = new_journal_path
    else
      redirect_path = "patients/remission_form"
    end

    respond_to do |format|
      if @journal.save
        format.html { redirect_to redirect_path, notice: 'Journal was successfully created.' }
        format.json { render json: @journal, status: :created, location: @journal }
      else
        format.html { render action: "new" }
        format.json { render json: @journal.errors, status: :unprocessable_entity }
      end
    end
  end
  def update
    @journal = Journal.find(params[:id])
    gon.journal = @journal
    if @journal.update_attributes(params[:journal])
      #flash[:success] = "Medical abstraction form updated"
    else
      flash[:error] = "Medical abstraction form was not updated"
    end
    if params[:commit] == "Add relapse"
      redirect_path = new_journal_path(patient_id: @journal.patient_id, treatment_no: @journal.treatment_no + 1)
    else
      redirect_path = "/patients/" + @journal.patient_id.to_s +  "/edit_remission"
    end
    respond_to do |format|
      format.html { redirect_to redirect_path }# show.html.erb
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
    @journal = Journal.new(patient_id: params[:patient_id], treatment_no: params[:treatment_no])
    @journal.save
    gon.journal = @journal

    # Where there is possible to add there should be one by default
    @bone_marrow_transplantation = BoneMarrowTransplantation.create(journal_id: @journal.id)
    #ChemoTherapy.create(journal_id: @journal.id)
    #CytostaticDrugGiven.create(journal_id: @journal.id, chemoorbonemarrow: 1)
    #CytostaticDrugGivenBoneMarrow.create(journal_id: @journal.id, bone_marrow_transplantation_id: @bone_marrow_transplantation.id, chemoorbonemarrow: 2)
    Surgery.create(journal_id: @journal.id)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @journal }
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
