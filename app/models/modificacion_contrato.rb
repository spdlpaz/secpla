#encoding: utf-8
class ModificacionContrato
	include DataMapper::Resource
	include DataMapper::Timestamps

	property :id, Serial
	property :monto, Integer, :required => true
	property :plazo, Date, :required => true
								
	belongs_to :contrato

	timestamps :at 
end