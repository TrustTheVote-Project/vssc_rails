class Vedastore::PartyContestIdRef < ActiveRecord::Base
  include XsdRailsFunctions
  include Vedaspace::PartyContestIdRef
  
  belongs_to :coalition, foreign_key: :party_id
  belongs_to :contest, primary_key: :object_id, foreign_key: :contest_id_ref, class_name: "Vedastore::Contest"
  
  define_text_node(:contest_id_ref)
  

end