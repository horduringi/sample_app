class FormController < ApplicationController

  def show
    @journal = Journal.find(params[:id])
    respond_to do |format|
      format.html { render "form/show" }# show.html.erb
      format.json { render json: @journal }
    end
  end


  def get_journals
    @journals = Journal.all
    render :json => @journals, :status => :ok
  end

  def setcountry
    @journal = Journal.setcountry(params[:countryid])
    respond_to do |format|
      format.json { render :json => @journal }
    end
  end

end
