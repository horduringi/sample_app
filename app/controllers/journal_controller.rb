class JournalController < ApplicationController

  def update
    @journal = Journal.find(params[:id])
    gon.journal = @journal
    if @journal.update_attributes(params[:journal])
      flash[:success] = "Medical abstraction form updated"
    else
      flash[:error] = "Medical abstraction form was not updated"
    end
    respond_to do |format|
      format.html { render "journal/show" }# show.html.erb
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
  def edit
    @journal = Journal.find(params[:id])
    gon.journal = @journal
    respond_to do |format|
      format.html #{ render "form/show" }# show.html.erb
      format.json { render json: @journal }
    end
  end
end
