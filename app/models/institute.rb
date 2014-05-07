class Institute < ActiveHash::Base
  self.data = [{ id: 1, initials: "KB", name: "Kræftens bekæmpelse, Danish Cancer Society Research Center", address: "København"},
               { id: 2, initials: "AUH", name: "Århus University Hospital", address: "Århus/Skejby"},
               { id: 3, initials: "TYKS", name: "Turku University Hospital", address: "Turku"},
               { id: 4, initials: "FCR", name: "Finnish Cancer Registry", address: "Helsinki"},
               { id: 5, initials: "LSH", name: "Landspitali University Hospital", address: "Reykjavík"},
                { id: 6, initials: "OUS", name: "Oslo University Hospital", address: "Oslo"},
                { id: 7, initials: "HUS", name: "Haukeland University Hospital", address: "Bergen"},
                { id: 8, initials: "UNN", name: "University Hospital of North Norway", address: "Tromsø"},
                { id: 9, initials: "SUS", name: "Skåne University Hospital", address: "Lund"},
                { id: 10, initials: "OTHER", name: "Other", address: "Unknown"}
                ]
  include ActiveHash::Associations
  has_many :users
end
