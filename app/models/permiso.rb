#encoding: utf-8
class Permiso
	include DataMapper::Resource
	include DataMapper::Timestamps

	property :id, Serial
	property :valor, Integer, :required => true
	
	belongs_to :usuario
	belongs_to :proyecto

	timestamps :at 
end