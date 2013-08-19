#encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Creando Barrios..."
barrios = [
	[1, 'Andalué'],
	[2, 'Arboleda'],
	[3, 'Boca Sur'],
	[4, 'Camino a Santa Juana'],
	[5, 'Candelaria'],
	[6, 'Costa Mar'],
	[7, 'San Pedro del Valle'],
	[8, 'San Pedro Viejo'],
	[9, 'Huertos Familiares'],
	[10, 'Idahue'],
	[11, 'Lomas Coloradas'],
	[12, 'Michaihue'],
	[13, 'El Venado'],
	[14, 'Parque Residencial Laguna Grande'],
	[15, 'Portal de San Pedro'],
	[16, 'Recodo'],
	[17, 'Spring-Hill'],
	[18, 'Villa San Pedro'],
	[19, 'Parque Residencial Los Canelos'],
	[20, 'Parque Residencial Bayona'],
]
barrios.each do |id, nombre|
  Barrio.create(id: id, nombre: nombre)
end

puts "Creando Gestores..."
gestores = [
	[1, 'Municipalidad San Pedro de la Paz'],
]
gestores.each do |id, nombre|
  Gestor.create(id: id, nombre: nombre)
end

puts "Creando Areas..."
areas = [
	[1, 'Deportes'],
	[2, 'Deportes y recración'],
	[3, 'Educación'],
	[4, 'Medio Ambiente'],
	[5, 'Multisectorial'],
	[6, 'Municipal'],
	[7, 'Salud'],
	[8, 'Vialidad y transporte '],
]
areas.each do |id, nombre|
  Area.create(id: id, nombre: nombre)
end

puts "Creando Tipos Proyecto..."
tipos = [
	[1, 'Proyecto'],
	[2, 'Estudio'],
	[3, 'Infraestructura'],
	[4, 'Servicios'],
	[5, 'Programa'],
]
tipos.each do |id, nombre|
  TipoProyecto.create(id: id, nombre: nombre)
end


puts "Creando Estados proyectos..."
estados = [
	[1, 'Admisible'],
	[2, 'Ejecutado'],
	[3, 'Elaboracion de bases'],
	[4, 'En ejecución'],
	[5, 'En etapa de evaluación'],
	[6, 'En licitacion'],
	[7,'En licitacion 2° llamado'],
	[8, 'En proceso de actualizacion serviu adjudicada'],
	[9, 'En proceso de adjudicacion'],
	[10, 'En reevaluación'],
	[11, 'Falta informacion'],
	[12, 'Postulado'],
	[13, 'Rs'],
	[14, 'Visado tecnicamente'],
]

estados.each do |id, nombre|
  EstadoProyecto.create(id: id, nombre: nombre)
end

puts "Creadno Fuentes financiamiento..."
fins = [
	[1, 'FNDR'],
	[2, 'FRIL'],
	[3, 'Ministerio de Educación'],
	[4, 'MINVU'],
	[5, 'Municipal - Vecinos'],
	[6, 'PMB'],
	[7, 'PMU'],
	[8, 'PRB'],
	[9, 'SUBDERE y Municipio'],
	[10, 'Fondo Municipal'],


]
fins.each do |id, nombre|
  FuenteFinanciamiento.create(id: id, nombre: nombre)
end

puts "Creando Estados licitacions..."
estadosl = [
	[1, 'Arriendo Por mes por 3 años'],
	[2, 'EETT'],
	[3, 'Elaboracion de bases y tdr'],
	[4, 'Elaboracion de licitacion'],
	[5, 'Preparacion de terminos de referencia'],
	[6, 'Publicada'],
]

estadosl.each do |id, nombre|
  EstadoLicitacion.create(id: id, nombre: nombre)
end

puts "Creando tipos licitacions..."
tiposl = [
	[1, 'Consultoria'],
	[2, 'Equipamiento'],
	[3, 'Equipos'],
	[4, 'Estudios'],
	[5, 'Obras civiles'],
	[6, 'Servicios'],
	[7, 'Vehiculos'],
]

tiposl.each do |id, nombre|
  TipoLicitacion.create(id: id, nombre: nombre)
end

puts "Creando tipos archivos"
tiposa = [
	[1, 'Borrador'],
	[2,'Final'],
]

tiposa.each do |id, nombre|
  TipoArchivo.create(id: id, nombre: nombre)
end

puts "Francisco..."
Usuario.create(
	rut: '16.140.052-1',
	nombre: 'Francisco',
	apaterno: 'Mellado',
	amaterno: 'Chaparro',
	profesion: 'Ingeniero (e) Computación e informática',
	password: 'secpla12345',
	correo: 'fmellado@sanpedrodelapaz.cl',
	telefono: '2501984',
	es_admin: true
)
puts "Marcela..."
Usuario.create(
	rut: '10.967.593-8',
	nombre: 'Marcela',
	apaterno: 'Gomez',
	amaterno: 'Urrutia',
	profesion: 'Ingeniero Comercial',
	password: 'marcela',
	correo: 'mgomez@sanpedrodelapaz.cl',
	telefono: '2501949-2501902',
	es_admin: false
)

puts "Ricardo..."
Usuario.create(
	rut: '10.967.593-8',
	nombre: 'Ricardo',
	apaterno: 'Sanhueza',
	amaterno: 'De la Maza',
	profesion: 'Arquitecto',
	password: 'ricardo',
	correo: 'rsanhueza@sanpedrodelapaz.cl',
	telefono: '2501949-2501902',
	es_admin: false
)
puts "Cristian..."
Usuario.create(
	rut: '9.759.259-4',
	nombre: 'Cristian',
	apaterno: 'Miranda',
	amaterno: 'Avila',
	profesion: '-',
	password: 'cristian',
	correo: 'cmiranda@sanpedrodelapaz.cl',
	telefono: '2501949-2501902',
	es_admin: false
)
puts "Leonor..."
Usuario.create(
	rut: '14.349.083-1',
	nombre: 'Leonor',
	apaterno: 'Cruzat',
	amaterno: 'Molina',
	profesion: 'Ingeniero en Construcción',
	password: 'leonor',
	correo: 'leonorc@sanpedrodelapaz.cl',
	telefono: '2501949-2501902',
	es_admin: false
)
puts "kidora..."
Usuario.create(
	rut: '12.381.972-1',
	nombre: 'Kidora',
	apaterno: 'Sepulveda',
	amaterno: 'Escobar',
	profesion: '-',
	password: 'kidora',
	correo: 'ksepulveda@sanpedrodelapaz.cl',
	telefono: '2501949-2501902',
	es_admin: false
)
puts "Mauricio..."
Usuario.create(
	rut: '10.825.561-7',
	nombre: 'Mauricio',
	apaterno: 'Benavente',
	amaterno: 'Irribarra',
	profesion: '-',
	password: 'mauricio',
	correo: 'mbenavente@sanpedrodelapaz.cl',
	telefono: '2501949-2501902',
	es_admin: false
)
puts "Roberto..."
Usuario.create(
	rut: '10.421.975-6',
	nombre: 'Roberto',
	apaterno: 'Aguayo',
	amaterno: 'Cortes',
	profesion: '-',
	password: 'roberto',
	correo: 'raguayo@sanpedrodelapaz.cl',
	telefono: '2501949-2501902',
	es_admin: true
)