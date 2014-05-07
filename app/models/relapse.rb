class Relapse < ActiveRecord::Base
  attr_accessible :date, :number, :journal_id
  belongs_to :journal, dependent: :destroy
end
