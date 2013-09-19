class Country < ActiveRecord::Base
  attr_accessible :countrycode, :countryname

  def country_combo
    "#{id} - #{self.countryname}"
  end
end
