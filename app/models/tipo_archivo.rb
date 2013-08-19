#encoding: utf-8
class TipoArchivo
	include DataMapper::Resource
	include DataMapper::Timestamps

	property :id, Serial
	property :nombre, String, :required => true, :unique => true, :messages => {
														      :is_unique => "El campo ingreado ya existe.",
	    													}
	has n, :archivo_proyectos
	has n, :archivo_licitacion

	timestamps :at 
end