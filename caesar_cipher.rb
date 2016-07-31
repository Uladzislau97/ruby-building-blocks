puts "Enter a string that shoul be encrypted"
string = gets.chomp
puts "Enter a code of a cipher"
code = gets.chomp

def empty?(code)
  code == ""
end

def str_is_int?(code)
  code.strip =~ /^\d+$/
end

def caesar_cipher(string, code)
  if code >= 0 and code <= 26
  	symbols = string.split("")

  	symbols.map! do |char|
  	  char.ord
  	end

	symbols.map! do |char|
	  if char >= 65 and char <= 90
  	  	char += code

  	  	if char > 90
  	  	  char -= 26
  	  	else
  	  	  char
  	  	end

  	  elsif char >= 97 and char <= 122
  	  	char += code

  	  	if char > 122
  	  	  char -= 26
  	  	else
  	  	  char
  	  	end

  	  else
  	  	char
  	  end
	
	end

	symbols.map! do |char|
      char.chr
	end

	puts symbols.join

  else
  	puts "Wrong code! It should be in range from 0 to 26"
  end
end

#check if string is a number
until not empty?(code) and str_is_int?(code)  do
  puts "Error! Enter a number please" 
  code = gets.chomp	  
end

code = code.to_i

caesar_cipher(string, code)
