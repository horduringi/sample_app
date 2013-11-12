class SurgeryCompleteRemovalOrganSpec < ActiveHash::Base
  self.data = [
    {id:  1, text: "0 - No"},
    {id:  2, text: "1 - Yes, ovaries"},
    {id:  3, text: "2 - Yes, testicles"},
    {id:  4, text: "3 - Yes, pituitary gland (hypophysis)"},
    {id:  5, text: "4 - Yes, thyroid"},
    {id:  6, text: "5 - Yes, adrenal gland"},
    {id:  7, text: "6 - Yes, other"}
  ]
  

  def surgerycompleteremovalorganspec_combo
    "Yes - #{self.text}"
  end
end
