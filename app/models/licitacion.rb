#encoding: utf-8
class Licitacion
	include DataMapper::Resource
	include DataMapper::Timestamps

	property :id, Serial
	property :nombre, String, :required => true, :length => 100
	property :codigo, String, :required => true
	property :id_mercado, String, :required => true
	property :url_mercado, String, :required => true, :length => 200
	property :monto_disponible, Integer, :required => true
	property :fecha_publicacion, Date, :required => true
	property :fecha_cierre, Date, :required => true

	belongs_to :estado_licitacion
	belongs_to :proyecto
	belongs_to :usuario
	belongs_to :tipo_licitacion
	has n, :archivo_licitacions
	has 1, :contrato


	timestamps :at 
end