# ruby encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


dominant_foot_list = [
  ["pie derecho" ],
  [ "pie izquiero"],
	[ "ambos pies"]
]

dominant_foot_list.each do |description|
  DominantFoot.find_or_create_by( :description => description )
end

nationality_list = [
  ["Argentina", "argentina.png"],
  ["Chilena", "chile.png"],
	["Uruguaya", "uruguay.png"],
	["Brasilera", "brasil.png"],
	["Colombiana", "colombia.png"],
	["Paraguaya", "paraguay.png"],
	["Peruana", "peru.png"],
	["Boliviana", "bolivia.png"],
	["Ecuatoriana", "ecuador.png"],
	["Nigeriana", "nigeria.png"],
	["Sudafricana", "sudafrica.png"],
	["Canadiense", "canada.png"],
	["Estadounidense", "estados_unidos.png"],
	["Mexicana", "mexico.png"],
	["Costarricense", "costa_rica.png"],
	["Hondureña","hoduras.png"],
	["Panameña", "panama.png"],
	["Salvadoreña", "el_salvador.png"],
	["Dominicana", "republica_dominicana.png"],
	["Jamaiquina", "jamaica.png"],
	["Puertorriqueña", "puerto_rico.png"],
	["Paraguaya","paraguay.png"],
	["Venezolana", "venenzuela.png"],
	["Japonesa", "japon.png"]
]


nationality_list.each do |name, flag|
  Nationality.find_or_create_by( :name => name, :flag => flag )
end


person_list = [
	# Entrenadores (COACHES)
  ["Marcelo", "Gallardo", "marcelo_gallardo.png", "1976/01/18", 70, 165, Nationality.where(name: "Argentina")],
  ["Guillermo", "Barros Schelotto", "guillermo_barros_schelotto.png", "1973/05/04", 73, 171, Nationality.where(name: "Argentina")],
  ["Eduardo", "Coudet", "eduardo_coudet.png", "1974/09/12", 73, 178, Nationality.where(name: "Argentina")],
  ["Pablo", "Guede", "pablo_guede.png", "1974/11/11", 74, 178, Nationality.where(name: "Argentina")],
  ["Sebastián Ariel", "Mendez", "sebastian_mendez.png", "1977/07/04", 85, 184, Nationality.where(name: "Argentina")],
  ["Cristian", "Bassedas", "cristian_bassedas.png", "1973/02/16", 74, 173, Nationality.where(name: "Argentina")],
  ["Pedro", "Troglio", "pedro_troglio.png", "1965/07/28", 68, 172, Nationality.where(name: "Argentina")],
  ["Darío", "Franco", "dario_franco.png", "1969/01/17", 80, 187, Nationality.where(name: "Argentina")],
  ["Sergio", "Rondina", "sergio_rondina.png", "1971/11/03", 71, 169, Nationality.where(name: "Argentina")],
  ["Rubén", "Forestello", "ruben_forestello.png", "1971/02/15", 79, 180, Nationality.where(name: "Argentina")],
  ["Claudio", "Vivas", "claudio_vivas.png", "1968/08/12", 78, 173, Nationality.where(name: "Argentina")],
  ["Mauricio", "Pellegrino", "mauricio_pellegrino.png", "1971/08/05", 84, 193, Nationality.where(name: "Argentina")],
  ["Sergio", "Lippi", "sergio_lippi.png", "1965/02/02", 74, 173, Nationality.where(name: "Argentina")],
  ["Ricardo", "Zielinski", "ricardo_zielinski.png", "1973/02/16", 86	, 180, Nationality.where(name: "Argentina")],
  ["Cristian Leonel", "Díaz", "cristian_diaz.png", "1976/05/12", 76	, 176, Nationality.where(name: "Argentina")],
  ["Alfredo ", "Grelak", "alfredo_grelak.png", "1970/06/20", 78	, 176, Nationality.where(name: "Argentina")],
  ["Jorge", "Almirón", "jorge_almiron.png", "1971/06/19", 79	, 181, Nationality.where(name: "Argentina")],
  ["Frank Darío", "Kudelka", "frank_kudelka.png", "1961/05/12", 86	, 180, Nationality.where(name: "Argentina")]
]

person_list.each do |first_name, last_name, picture, birth_date, weight, height, nationality_id|
  Person.find_or_create_by( :first_name=>first_name, :last_name=>last_name, :picture=>picture, :birth_date=>birth_date, :weight=>weight, :height=>height, :nationality_id=>nationality_id )
end

 
coach_list = [
	# Entrenadores (COACHES) |person, debut_coach	|
  [Person.where(last_name: "Gallardo"), "2011/08/14"]
]

coach_list.each do |person, dabut_coach|
  Coach.find_or_create_by( :person => person, :debut_coach => debut_coach )
end