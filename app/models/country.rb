class Country < ActiveHash::Base
  self.data = [{ id: 1, countrycode: "DK", countryname: "Denmark", created_at: "2013-09-07 15:17:44", updated_at: "2013-09-07 15:17:44"}, { id: 2, countrycode: "FI", countryname: "Finland", created_at: "2013-09-07 15:18:08", updated_at: "2013-09-07 15:18:08"}, { id: 3, countrycode: "ISL", countryname: "Iceland", created_at: "2013-09-07 15:18:45", updated_at: "2013-09-07 15:18:45"}, { id: 4, countrycode: "NO", countryname: "Norway", created_at: "2013-09-07 15:19:03", updated_at: "2013-09-07 15:19:03"}, { id: 5, countrycode: "SE", countryname: "Sweden", created_at: "2013-09-07 15:19:16", updated_at: "2013-09-07 15:19:16"}]

  def country_combo
    "#{id} - #{self.countryname}"
  end
end
