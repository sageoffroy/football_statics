# ruby encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


dominant_foot_list = [
  "pie derecho",
  "pie izquierdo",
	"ambos pies"
]

dominant_foot_list.each do |description|
  DominantFoot.find_or_create_by(description: description)
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
	["Venezolana", "venenzuela.png"],
	["Japonesa", "japon.png"]
]


nationality_list.each do |name, flag|
  Nationality.find_or_create_by( :name => name, :flag => flag )
end


person_list = [
	# Entrenadores (COACHES)
  ["Marcelo", "Gallardo", "marcelo_gallardo.png", "1976/01/18", 70, 165, Nationality.where(name: "Argentina").first],
  ["Guillermo", "Barros Schelotto", "guillermo_barros_schelotto.png", "1973/05/04", 73, 171, Nationality.where(name: "Argentina").first],
  ["Eduardo", "Coudet", "eduardo_coudet.png", "1974/09/12", 73, 178, Nationality.where(name: "Argentina").first],
  ["Pablo", "Guede", "pablo_guede.png", "1974/11/11", 74, 178, Nationality.where(name: "Argentina").first],
  ["Sebastián Ariel", "Mendez", "sebastian_mendez.png", "1977/07/04", 85, 184, Nationality.where(name: "Argentina").first],
  ["Cristian", "Bassedas", "cristian_bassedas.png", "1973/02/16", 74, 173, Nationality.where(name: "Argentina").first],
  ["Pedro", "Troglio", "pedro_troglio.png", "1965/07/28", 68, 172, Nationality.where(name: "Argentina").first],
  ["Darío", "Franco", "dario_franco.png", "1969/01/17", 80, 187, Nationality.where(name: "Argentina").first],
  ["Sergio", "Rondina", "sergio_rondina.png", "1971/11/03", 71, 169, Nationality.where(name: "Argentina").first],
  ["Rubén", "Forestello", "ruben_forestello.png", "1971/02/15", 79, 180, Nationality.where(name: "Argentina").first],
  ["Claudio", "Vivas", "claudio_vivas.png", "1968/08/12", 78, 173, Nationality.where(name: "Argentina").first],
  ["Mauricio", "Pellegrino", "mauricio_pellegrino.png", "1971/08/05", 84, 193, Nationality.where(name: "Argentina").first],
  ["Sergio", "Lippi", "sergio_lippi.png", "1965/02/02", 74, 173, Nationality.where(name: "Argentina").first],
  ["Ricardo", "Zielinski", "ricardo_zielinski.png", "1973/02/16", 86	, 180, Nationality.where(name: "Argentina").first],
  ["Cristian Leonel", "Díaz", "cristian_diaz.png", "1976/05/12", 76	, 176, Nationality.where(name: "Argentina").first],
  ["Alfredo ", "Grelak", "alfredo_grelak.png", "1970/06/20", 78	, 176, Nationality.where(name: "Argentina").first],
  ["Jorge", "Almirón", "jorge_almiron.png", "1971/06/19", 79	, 181, Nationality.where(name: "Argentina").first],
  ["Frank Darío", "Kudelka", "frank_kudelka.png", "1961/05/12", 86	, 180, Nationality.where(name: "Argentina").first]
]

person_list.each do |first_name, last_name, picture, birth_date, weight, height, nationality_id|
    if !(Person.exists?(first_name: first_name, last_name: last_name))
      Person.create(first_name:first_name, last_name:last_name, picture:picture, birth_date:birth_date, weight:weight, height:height, nationality_id:nationality_id)
    end
end


 
coach_list = [
	# Entrenadores (COACHES) |person, debut_coach	|
  [Person.where(last_name:"Gallardo").first, "2011/08/14"],
  [Person.where(last_name:"Barros Schelotto").first, "2012/08/03"],
  [Person.where(last_name:"Coudet").first, "2014/12/15"],
  [Person.where(last_name:"Pellegrino").first, "2012/05/01"]
]

coach_list.each do |person, debut_coach|
  #Coach.find_or_create_by(person: person, debut_coach:debut_coach)
  if !(Coach.exists?(person: person))
    Coach.create(person: person, debut_coach:debut_coach)
  end
  
end




stadium_list = [
  ["Estadio Monumental Antonio Vespucio Liberti", "El Monumental", "1935/05/25", 65645, "el_monumental.png"],
  ["Libertadores de América", "Libertadores de América", "1928/03/04", 48069, "libertadores_de_america.png"]

]

stadium_list.each do |name, nickname, foundation, capacity, picture|
  if !(Stadium.exists?(name: name))
    Stadium.create(name:name, nickname:nickname, foundation:foundation, capacity:capacity, picture:picture)
  end
end


team_list =[
  ["River Plate", "CARP", "1901/05/25", 123665, Stadium.where(nickname: "El Monumental").first,"river_plate.png" ],
  ["Independiente", "CAI", "1904/08/04", 107000, Stadium.where(nickname: "Libertadores de América").first,"independient.png" ]
]
team_list.each do |name, initials, foundation, members, stadium, shield|
  if !(Team.exists?(name: name))
    Team.create(name:name, initials:initials, foundation:foundation, members:members, stadium:stadium, shield:shield)
  end
end


