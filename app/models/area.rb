#encoding: utf-8
class Area
	include DataMapper::Resource
	include DataMapper::Timestamps

	property :id, Serial
	property :nombre, String, :required => true, :unique => true, :messages => {
														      :is_unique => "El campo ingreado ya existe.",
	    													}
	has n, :proyectos

	timestamps :at 
end