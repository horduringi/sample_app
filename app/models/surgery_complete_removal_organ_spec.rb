class SurgeryCompleteRemovalOrganSpec < ActiveHash::Base
  self.data = [
    {id:  1, text: "0 - No", seq: 0},
    {id:  2, text: "1 - Yes, ovaries", seq: 1},
    {id:  3, text: "2 - Yes, testicles", seq: 2},
    {id:  4, text: "3 - Yes, pituitary gland (hypophysis)", seq: 3},
    {id:  5, text: "4 - Yes, thyroid", seq: 4},
    {id:  6, text: "5 - Yes, adrenal gland", seq: 5},
    {id:  7, text: "6 - Yes, other", seq: 6}
  ]
  

  def surgerycompleteremovalorganspec_combo
    "Yes - #{self.text}"
  end
end
