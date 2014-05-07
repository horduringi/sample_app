class StaticPagesController < ApplicationController
  def home
    @progress = (Patient.where(is_done: true).count.to_f / Patient.all.count.to_f) * 100
  end


  def help
  end

  def about
  end

  def contact
  end
end
