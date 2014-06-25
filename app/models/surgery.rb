class Surgery < ActiveRecord::Base
  attr_accessible *column_names, :surgerycompleteremovalorgan, :surgerycompleteremovalorganlaterality, :surgerycompleteremovalorganspec, :surgerydate, :surgeryradicality, :surgerytype, :journal_id
  belongs_to :journal, dependent: :destroy

  validates_presence_of :surgerydate_day, :surgerydate_month, :surgerydate_year, :surgerytype, :surgeryradicality, :surgerycompleteremovalorganspec
  validates_presence_of :surgerycompleteremovalorganlaterality, :if => :surgerycompleteremoval?
  def surgerycompleteremoval?
    Array(1..6).include? surgerycompleteremovalorganspec
  end
  def self.get_values(id)
    row = []
    j = Surgery.find(id)
    row << j.attributes.values_at(*column_names)
  end
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      columns = ["id", "journal_id", "surgerydate_day", "surgerydate_month", "surgerydate_year",
        "surgerytype", "surgeryradicality", "surgerycompleteremovalorganspec"

      ]
      csv << column_names
      all.each do |surgery|
        csv << surgery.attributes.values_at(*columns).collect{|item| if item.class == String then item.squish() else item end}
      end
    end
  end
end