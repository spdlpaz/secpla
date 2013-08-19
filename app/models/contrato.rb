#encoding: utf-8
class Contrato
	include DataMapper::Resource
	include DataMapper::Timestamps

	property :id, Serial
	property :nombre, String, :required => true, :length => 100
	property :empresa, String, :required => true, :length => 100
	property :monto_contratado, Integer, :required => true
	property :monto_total, Integer, :required => true
	property :observacion, String, :required => true, :length => 500
	property :ito, String, :required => true, :length => 100
	property :ito_suplente, String, :required => true, :length => 100
	property :plazo, Integer, :required => true
	property :plazo_total, Integer, :required => true

	belongs_to :licitacion
	has 1, :boleta_garantia
	has n, :modificacion_contrato

	timestamps :at 
end