class PublicController < ApplicationController
	def index
		string = '2 2202223033 333'
		@decrypted_string = DecryptionBuilder.new(string).decrypt
	
	end
end
