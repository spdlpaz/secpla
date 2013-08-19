#encoding: utf-8
class ProyectoAsociado
	include DataMapper::Resource
	include DataMapper::Timestamps

	property :id, Serial
	property :codigo, String, :required => true

	belongs_to :proyecto

	timestamps :at 
end