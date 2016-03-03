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
  ["Frank Darío", "Kudelka", "frank_kudelka.png", "1961/05/12", 86	, 180, Nationality.where(name: "Argentina").first],
  # Jugadores River Plate
    #Arqueros
  ["Marcelo", "Barovero", "marcelo_barovero.png", "1984/02/18", 71, 181, Nationality.where(name: "Argentina").first],
  ["Julio", "Chiarini", "julio_chiarini.png", "1982/03/04", 79, 181, Nationality.where(name: "Argentina").first],
  ["Augusto", "Batalla", "augusto_batalla.png", "1996/04/30",  79, 185, Nationality.where(name: "Argentina").first],
    #Defensores
  ["Jonathan", "Maidana", "jonatha_maidana.png", "1985/07/29", 86, 185, Nationality.where(name: "Argentina").first],
  ["Éder", "Álvarez Balanta", "eder_alvarez_balanta.png", "1993/02/28", 85, 182, Nationality.where(name: "Colombiana").first],
  ["Milton", "Casco", "milton_casco.png", "1988/04/11", 71, 171, Nationality.where(name: "Argentina").first],
  ["Leonel", "Vangioni", "leonel_vangioni.png", "1987/05/05", 73, 177, Nationality.where(name: "Argentina").first],
  ["Gabriel", "Mercado", "gabriel_mercado.png", "1987/03/18", 83, 180, Nationality.where(name: "Argentina").first],
  ["Emanuel", "Mammana", "emanuel_mammana.png", "1996/02/10", 70, 184, Nationality.where(name: "Argentina").first],
  ["Leandro", "Vega", "leandro_vega.png", "1996/05/27", 70, 179, Nationality.where(name: "Argentina").first],
    #Mediocampistas
  ["Nicolás", "Domingo", "nicolas_domingo.png", "1985/04/08", 70, 174, Nationality.where(name: "Argentina").first],
  ["Nicolás", "Bertolo", "nicolas_bertolo.png", "1986/01/02", 75, 179, Nationality.where(name: "Argentina").first],
  ["Gonzalo Nicolás", "Martinez", "gonzalo_martinez.png", "1993/06/13", 75, 172, Nationality.where(name: "Argentina").first],
  ["Joaquín", "Arzura", "joaquin_arzura.png", "1985/05/18", 71, 170, Nationality.where(name: "Argentina").first],
  ["Exequiel", "Palacios", "ezequiel_palacios.png", "1998/10/05", 75, 179, Nationality.where(name: "Argentina").first],
  ["Camilo", "Mayada", "camilo_mayada.png", "1991/01/08", 75, 174, Nationality.where(name: "Uruguaya").first],
  ["Andrés", "D'Alessandro", "andres_dalessandro.png", "1981/04/15", 72, 174, Nationality.where(name: "Argentina").first],
  ["Leonardo", "Ponzio", "leonardo_ponzio.png", "1982/01/29", 71, 174, Nationality.where(name: "Argentina").first],
  ["Ignacio Martín", "Fernández", "ignacio_fernandez.png", "1990/01/19", 77, 182, Nationality.where(name: "Argentina").first],
  ["Luis", "González", "luis_gonzalez.png", "1981/01/19", 75, 179, Nationality.where(name: "Argentina").first],
    #Delanteros
  ["Rodrigo", "Mora", "rodrigo_mora.png", "1987/10/29", 74, 170, Nationality.where(name: "Uruguaya").first],
  ["Lucas", "Alario", "lucas_alario.png", "1992/10/08", 67, 178, Nationality.where(name: "Argentina").first],
  ["Leonardo", "Pisculichi", "leonardo_pisculichi.png", "1984/01/18", 65, 175, Nationality.where(name: "Argentina").first],
  ["Tabaré", "Viudez", "tabare_viudez.png", "1989/09/08", 64, 169, Nationality.where(name: "Uruguaya").first],
  ["Iván", "Alonso", "ivan_alonso.png", "1979/04/10", 67, 178, Nationality.where(name: "Argentina").first],
  ["Sebastián", "Driussi", "sebastian_driussi.png", "1996/02/09", 82, 174, Nationality.where(name: "Argentina").first],
  # Jugadores Independient
    #Arqueros
  ["Diego Matías", "Rodríguez", "diego-matias-rodriguez.png", "1989/06/25", 80, 184, Nationality.where(name: "Argentina").first],
  ["Facundo", "Daffonchio", "facundo-daffonchio.png", "1990/02/02", 77, 187, Nationality.where(name: "Argentina").first],
  ["Martín", "Campaña", "martin-campana.png", "1989/05/29", 77, 187, Nationality.where(name: "Uruguay").first],
    #Defensores
  ["Hernán", "Pellerano", "hernan-pellerano.png", "1984/06/04", 77, 184, Nationality.where(name: "Argentina").first],
  ["Emanuel", "Aguilera", "emanuel-aguilera.png", "1989/06/11", 76, 188, Nationality.where(name: "Argentina").first],
  ["Víctor", "Cuesta", "victor-cuesta.png", "1988/11/19", 84, 187, Nationality.where(name: "Argentina").first],
  ["Rodrigo", "Moreira", "rodrigo-moreira.png", "1996/07/15", 91, 187, Nationality.where(name: "Argentina").first],
  ["Nicolás", "Tagliafico", "nicolas-tagliafico.png", "1992/08/31", 65, 167, Nationality.where(name: "Argentina").first],
  ["Gustavo Ariel", "Toledo", "gustavo-ariel-toledo.png", "1989/09/19", 0, 0, Nationality.where(name: "Argentina").first],
  ["Néstor Adriel", "Breitenbruch", "nestor-adriel-breitenbruch.png", "1995/09/13", 76, 178, Nationality.where(name: "Argentina").first],
    #Mediocampistas
  ["Diego Martín", "Rodríguez Berrini", "diego-martin-rodriguez.png", "1989/09/04", 0, 0, Nationality.where(name: "Uruguay").first],
  ["Jorge", "Ortiz", "jorge-ortiz.png", "1984/06/20", 0, 175, Nationality.where(name: "Argentina").first],
  ["Jesús", "Méndez", "jesus-mendez.png", "1985/08/01", 0, 183, Nationality.where(name: "Argentina").first],
  ["Cristian Gabriel", "Rodríguez Barotti", "cristian-gabriel-rodrugez.png", "1985/09/30", 0, 177, Nationality.where(name: "Uruguay").first],
  ["Juan Manuel", "Martínez Trejo", "juan-manuel-martinez.png", "1992/01/12", 0, 0, Nationality.where(name: "Argentina").first],
  ["Emiliano Ariel", "Rigoni", "emiliano-rigoni.png", "1993/02/04", 0, 177, Nationality.where(name: "Argentina").first],
  ["Claudio Ezequiel", "Aquino", "claudio-ezequiel-aquino.png", "1991/07/24", 0, 172, Nationality.where(name: "Argentina").first],
  ["Rodrigo", "Gómez", "rodrigo-gomez.png", "1993/01/02", 0, 183, Nationality.where(name: "Argentina").first],
    #Delanteros
  ["Martín Nahuel", "Benítez", "martin-nahuel-benitez.png", "1994/06/17", 0, 173, Nationality.where(name: "Argentina").first],
  ["Diego Daniel", "Vera Méndez", "diego-daniel-vera.png", "1985/01/05", 0, 181, Nationality.where(name: "Uruguay").first],
  ["Leandro Miguel", "Fernández", "leandro-fernandez.png", "1991/03/12", 70, 178, Nationality.where(name: "Argentina").first],
  ["Lucas", "Albertengo", "lucas-albertengo.png", "1991/01/30", 73, 178, Nationality.where(name: "Argentina").first],
  ["Germán Gustavo", "Denis", "german-denis.png", "1981/09/10", 0, 183, Nationality.where(name: "Argentina").first]
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


#     POSITIONS
#
#        POR
#  LTI   DFC   LTD
#  MDI   MDC   MDD
#  MOI   MOC   MOD
#  DLI   DLC   DLD
#

player_list =[
  #River Plate
  [Person.where(last_name:"Barovero").first, DominantFoot.where(description:"pie derecho").first, "2004/10/01", ["POR"]],
  [Person.where(last_name:"Chiarini").first, DominantFoot.where(description:"pie derecho").first, "2003/10/23", ["POR"]],
  [Person.where(last_name:"Batalla").first, DominantFoot.where(description:"pie derecho").first, "-", ["POR"]],
  ########
  [Person.where(last_name:"Maidana").first, DominantFoot.where(description:"pie derecho").first, "2003/11/23", ["DFC"]],
  [Person.where(last_name:"Álvarez Balanta").first, DominantFoot.where(description:"pie izquierdo").first, "2013/04/07", ["DFC"]],
  [Person.where(last_name:"Mammana").first, DominantFoot.where(description:"pie derecho").first, "2014/10/09", ["DFC"]],
  [Person.where(last_name:"Casco").first, DominantFoot.where(description:"pie derecho").first, "2009/06/13", ["LTI"]],
  [Person.where(last_name:"Vangioni").first, DominantFoot.where(description:"pie izquierdo").first, "2006/11/05", ["LTI"]],
  [Person.where(last_name:"Mercado").first, DominantFoot.where(description:"pie derecho").first, "2007/02/21", ["LTD","DFC"]],
  [Person.where(last_name:"Vega").first, DominantFoot.where(description:"pie derecho").first, "2015/03/26", ["LTD"]],
  ########
  [Person.where(last_name:"Domingo").first, DominantFoot.where(description:"pie derecho").first, "2005/05/29", ["MDC"]],
  [Person.where(last_name:"Ponzio").first, DominantFoot.where(description:"pie derecho").first, "2000/07/17", ["MDC"]],
  [Person.where(last_name:"Arzura").first, DominantFoot.where(description:"pie derecho").first, "2011/11/29", ["MDC"]],
  [Person.where(last_name:"Martinez").first, DominantFoot.where(description:"pie izquierdo").first, "2011/09/10", ["MOI"]],
  [Person.where(last_name:"Bertolo").first, DominantFoot.where(description:"pie derecho").first, "2006/09/28", ["MOI"]],
  [Person.where(last_name:"Viudez").first, DominantFoot.where(description:"pie derecho").first, "2007/03/04", ["MOD"]],
  [Person.where(last_name:"Mayada").first, DominantFoot.where(description:"pie derecho").first, "2009/10/04", ["MOD", "MOI", "LD"]],
  [Person.where(last_name:"Pisculichi").first, DominantFoot.where(description:"pie derecho").first, "2002/02/20", ["MOC", "MOI"]],
  [Person.where(last_name:"Fernández").first, DominantFoot.where(description:"pie izquierdo").first, "2010/10/02", ["MOC", "MOI"]],
  [Person.where(last_name:"D'Alessandro").first, DominantFoot.where(description:"pie derecho").first, "2000/05/28", ["MOC"]],
  [Person.where(last_name:"González").first, DominantFoot.where(description:"pie derecho").first, "1999/04/29", ["MOC"]],
  [Person.where(last_name:"Palacios").first, DominantFoot.where(description:"pie derecho").first, "2015/11/08", ["MOC"]],
  ########
  [Person.where(last_name:"Mora").first, DominantFoot.where(description:"pie izquierdo").first, "2007/10/02", ["DLC"]],
  [Person.where(last_name:"Alario").first, DominantFoot.where(description:"pie izquierdo").first, "2011/06/11", ["DLC"]],
  [Person.where(last_name:"Alonso").first, DominantFoot.where(description:"pie izquierdo").first, "1998/10/01", ["DLC"]],
  [Person.where(last_name:"Driussi").first, DominantFoot.where(description:"pie izquierdo").first, "2013/12/01", ["DLC"]]
]


player_list.each do |person, dominant_foot, debut, position|
  if !(Player.exists?(person: person))
    Player.create(person:person, dominant_foot:dominant_foot, debut_player:debut, position:position)
  end
end

player_of_team_list = [
  [Player.where(person:Person.where(last_name:"Barovero").first).first, Team.where(name:"River Plate").first, "1/1/2015", "1/1/2017", 1],
  [Player.where(person:Person.where(last_name:"Chiarini").first).first, Team.where(name:"River Plate").first, "1/1/2015", "1/1/2017", 33],
  [Player.where(person:Person.where(last_name:"Batalla").first).first, Team.where(name:"River Plate").first, "1/1/2015", "1/1/2017", 42],

  [Player.where(person:Person.where(last_name:"Maidana").first).first, Team.where(name:"River Plate").first, "1/1/2015", "1/1/2017", 2],
  [Player.where(person:Person.where(last_name:"Álvarez Balanta").first).first, Team.where(name:"River Plate").first, "1/1/2015", "1/1/2017", 3],
  [Player.where(person:Person.where(last_name:"Casco").first).first, Team.where(name:"River Plate").first, "1/1/2015", "1/1/2017", 20]

]


player_of_team_list.each do | player, team, contract_start, contract_end, shirt_number|
  if !(PlayerOfTeam.exists?(player: player))
    PlayerOfTeam.create(player:player, team:team, contract_start:contract_start , contract_end:contract_end, shirt_number:shirt_number)
  end
end
