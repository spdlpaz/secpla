#encoding: utf-8
class Historial
	include DataMapper::Resource
	include DataMapper::Timestamps

	property :id, Serial
	property :descripcion, String, :required => true, :length => 200

	belongs_to :proyecto
	belongs_to :usuario

	timestamps :at 
end