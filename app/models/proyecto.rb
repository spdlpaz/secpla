#encoding: utf-8
class Proyecto
	include DataMapper::Resource
	include DataMapper::Timestamps

	property :id, Serial
	property :nombre, String, :required => true
	property :descripcion, Text, :required => true
	property :cod_financiamiento, String
	

	belongs_to :tipo_proyecto
	belongs_to :area
	belongs_to :barrio
	belongs_to :estado_proyecto
	belongs_to :gestor
	has 1, :georeferencia
	has n, :financiamiento_proyectos
	has n, :proyecto_asociados
	has n, :archivo_proyectos
	has n, :historials
	has n, :escritorios
	has 1, :responsable
	has n, :permisos
	has n, :licitacions
	
	timestamps :at 
end