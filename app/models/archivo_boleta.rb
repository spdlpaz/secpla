#encoding: utf-8
class ArchivoBoleta
	include DataMapper::Resource
	include DataMapper::Timestamps

	property :id, Serial
								
	belongs_to :boleta_garantia

	timestamps :at 
end