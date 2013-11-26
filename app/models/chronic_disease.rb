class ChronicDisease < ActiveHash::Base
  self.data = [{ id: 1, text: "No diseases of importance", created_at: "2013-09-07 15:58:56", updated_at: "2013-09-20 22:24:44", seq: 0},
               { id: 2, text: "Cardiac disease, please specify", created_at: "2013-09-07 15:59:10", updated_at: "2013-09-21 08:13:00", seq: 1},
               { id: 3, text: "Diabetes mellitus or other endocrine disease", created_at: "2013-09-07 15:59:30", updated_at: "2013-09-20 22:24:44", seq: 2},
               { id: 4, text: "Gastrointestinal disease", created_at: "2013-09-07 15:59:45", updated_at: "2013-09-20 22:24:44", seq: 3},
               { id: 5, text: "Other disease, please specify", created_at: "2013-09-07 15:59:59", updated_at: "2013-09-21 08:14:42", seq: 4}]

  def chronicdisease_combo
    "#{seq} - #{self.text}"
  end
end