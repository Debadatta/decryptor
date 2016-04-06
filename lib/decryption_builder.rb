class DecryptionBuilder
	COMPARE_HASH =  {
  		'2' => 'A',
  		'22' => 'B',
  		'222' => 'C',
  		'3' => 'D',
  		'33' => 'E',
  		'333' => 'F',
  		'4' =>'G',
  		'44' => 'H',
  		'444'=> 'I',
  		'5' => 'J',
  		'55' => 'K',
  		'555' => 'L',
  		'6' => 'M',
  		'66'=>'N',
  		'666'=>'O',
  		'7' => 'P',
  		'77' => 'Q',
  		'777' => 'R',
  		'7777' => 'S',
  		'8' => 'T',
  		'88'=>'U',
  		'888'=>'V',
  		'9' => 'W',
  		'99' => 'X',
  		'999' => 'Y',
  		'9999' => 'Z',
  		'0' => ' '
  	}
	def initialize(data)
		@data = data		
	end

	def decrypt
		decrypted_string = ''
		text_array = @data.split(' ')

		text_array.each_with_index do |text, k|
			#'22233555'
			j = 0
			(0..text.length-1).each do |i|
				binding.pry
			 	if j==i
				count = max_occ(text, text[i])				
				new_text = text[i] * count
				binding.pry
				decrypted_string += COMPARE_HASH["#{new_text}"]
				j = i+count
				#binding.pry				
				end
			end
				
		end

		return decrypted_string
	end

	private

	def max_occ(word,letter)
	    count =0
	    test =word.split('')
	    a = []

	    test.each do |l|

	       if l == letter
	       	#binding.pry
	          	count +=1	 
	        else
	          	break      
	       end
	   	end
	  	count
	end

end