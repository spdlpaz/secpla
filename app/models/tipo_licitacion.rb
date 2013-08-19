#encoding: utf-8
class TipoLicitacion
	include DataMapper::Resource
	include DataMapper::Timestamps

	property :id, Serial
	property :nombre, String, :required => true, :unique => true, :messages => {
														      :is_unique => "El campo ingreado ya existe.",
	    													}
	has n, :licitacions

	timestamps :at 
end