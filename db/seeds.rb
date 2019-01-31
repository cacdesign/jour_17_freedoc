# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



require 'faker'


# - Je crée mes villes
10.times do |index|
	c = City.create(name: Faker::Address.city)
	p "La ville #{c.name} a été créée"
end

# - Je crée mes diplômes (table de jointure Spécialités/Docteurs)
10.times do |index|
	dip = Diplome.create(name: Faker::Address.community)
	p "Le diplôme #{dip.name} a été créé"
end

# - Je crée mes spécialités
10.times do |index|
	s = Specialty.create(name: Faker::Color.color_name, diplome: Diplome.all.sample)
	p "La spécialité #{s.name} a été créé"
end

# - Je crée mes docteurs
10.times do |index|
	d = Doctor.create(last_name: Faker::Name.last_name, first_name: Faker::Name.first_name, city: City.all.sample, diplome: Diplome.all.sample)
	p "Le doctor #{d.last_name} a été crée"
end


# - Je crée mes patients
10.times do |index|
	pat = Patient.create(last_name: Faker::Name.last_name, first_name: Faker::Name.first_name, city: City.all.sample)
	p "Le patient #{pat.last_name} a été crée"
end


# - Je crée mes appointments
10.times do |index|
	a = Appointment.create(date: Faker::Date.between(20.days.ago, Date.today), doctor: Doctor.all.sample, patient: Patient.all.sample, city: City.all.sample)
	p "L'Appointment #{a.date} avec le docteur #{a.doctor.last_name} et le patient #{a.patient.last_name} a été crée"
end
