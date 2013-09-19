class JournalController < ApplicationController

  def update
    @journal = Journal.find(params[:id])
    if @journal.update_attributes(params[:journal])
      flash[:success] = "Medical abstraction form updated"
    else
      flash[:error] = "Medical abstraction form was not updated"
    end
    respond_to do |format|
      format.html { render "form/show" }# show.html.erb
    end
  end
end
