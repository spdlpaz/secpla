#encoding: utf-8
class FinanciamientoProyecto
	include DataMapper::Resource
	include DataMapper::Timestamps

	property :id, Serial
	property :monto, Integer, :required => true	

	belongs_to :proyecto
	belongs_to :fuente_financiamiento
	
	timestamps :at 
end