#encoding: utf-8
class Usuario
	include DataMapper::Resource
	include DataMapper::Timestamps

	property :id, Serial
	property :rut, String, :required => true, :unique => true, :length => 8..13, :messages => {
														      :is_unique => "El rut ya esta registrado.",
	    													}
	property :nombre, String, :required => true, :length => 100
	property :apaterno, String, :required => true
	property :amaterno, String, :required => true
	property :profesion, String, :required => true, :length => 100
	property :password, String, :required => true
	property :correo, String, :required => true
	property :telefono, String, :required => true, :length => 100
	property :es_admin, Boolean, :required => true, :default => false

	has n, :escritorios
	has n, :responsables
	has n, :permisos
	has n, :archivo_proyectos
	has n, :licitacions
	has n, :archivo_licitacions
	has n, :historials

	timestamps :at 
end