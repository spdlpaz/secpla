#encoding: utf-8
class Responsable
	include DataMapper::Resource
	include DataMapper::Timestamps

	property :id, Serial
	
	belongs_to :usuario
	belongs_to :proyecto

	timestamps :at 
end