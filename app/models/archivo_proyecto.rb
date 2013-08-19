#encoding: utf-8
class ArchivoProyecto
	include DataMapper::Resource
	include DataMapper::Timestamps

	property :id, Serial
	property :estado, String, :required => true
	property :descripcion, String, :required => true
	
	belongs_to :proyecto
	belongs_to :tipo_archivo
	belongs_to :usuario

	timestamps :at 
end