#encoding: utf-8
class BoletaGarantia
	include DataMapper::Resource
	include DataMapper::Timestamps

	property :id, Serial
	property :tipo, String, :required => true
	property :numero, String, :required => true, :length => 200
	property :monto, Integer, :required => true
	property :vencimiento, Date, :required => true
								
	belongs_to :contrato
	has 1, :archivo_boleta

	timestamps :at 
end