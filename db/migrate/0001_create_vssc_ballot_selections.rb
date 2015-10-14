class CreateVsscBallotSelections < ActiveRecord::Migration
  def change
    create_table :vssc_ballot_selections do |t|
      t.integer :contest_id
      t.integer :sequence_order
      
      t.string :type      
      
      t.string :object_id
      
      t.timestamps null: false
      
      #ballot_measure_selection
      t.integer :selection_id
      
      
      #candidate_selection
      t.boolean :is_write_in
      
            
    end  
    add_index :vssc_ballot_selections, :contest_id, name: :vssc_ballot_selection_contest  
    add_index :vssc_ballot_selections, :selection_id, name: :vssc_ballot_measure_selections
    add_index :vssc_ballot_selections, :object_id, name: :vssc_ballot_selection_object_id
    
    #candidate_selection
    create_table :vssc_ballot_selection_candidate_id_refs do |t|
      t.integer :ballot_selection_id
      t.string :candidate_id_ref
    end
    add_index :vssc_ballot_selection_candidate_id_refs, [:ballot_selection_id, :candidate_id_ref], name: :vssc_candidate_selection_candidates
    
    create_table :vssc_ballot_selection_endorsement_party_id_refs do |t|
      t.integer :ballot_selection_id
      t.string :party_id_ref
    end
    add_index :vssc_ballot_selection_endorsement_party_id_refs, [:ballot_selection_id, :party_id_ref], name: :vssc_candidate_selection_parties
    
    
    #party_selection
    create_table :vssc_ballot_selection_party_id_refs do |t|
      t.integer :ballot_selection_id
      t.string :party_id_ref
    end
    add_index :vssc_ballot_selection_party_id_refs, [:ballot_selection_id, :party_id_ref], name: :vssc_party_selection_parties
    
  end  
end
