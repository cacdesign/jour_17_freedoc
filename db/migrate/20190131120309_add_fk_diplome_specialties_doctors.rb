class AddFkDiplomeSpecialtiesDoctors < ActiveRecord::Migration[5.2]
  def change
  	add_reference :doctors, :diplome, foreign_key: true
  	add_reference :specialties, :diplome, foreign_key: true
  end
end
