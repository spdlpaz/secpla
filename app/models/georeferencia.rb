#encoding: utf-8
class Georeferencia
	include DataMapper::Resource
	include DataMapper::Timestamps

	property :id, Serial
	property :lat, String, :required => true
	property :lon, String, :required => true

	belongs_to :proyecto

	timestamps :at 
end