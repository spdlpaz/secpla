#encoding: utf-8
class FuenteFinanciamiento
	include DataMapper::Resource
	include DataMapper::Timestamps

	property :id, Serial
	property :nombre, String, :required => true, :unique => true, :messages => {
														      :is_unique => "El campo ingreado ya existe.",
	    													}
	has n, :financiamiento_proyecto

	timestamps :at 
end