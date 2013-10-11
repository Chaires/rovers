# Clase Compass
class Compass

# Crea getter, setter 
	attr_accessor :x
	attr_accessor :y
	attr_accessor :orientation   





		def initialize(x,y,orientation)
			@x = x
			@y = y
			@orientation = orientation

		end
		#Metodo para dirección izquierda
	def turn_left()	
	orientationLeft = { "N" => "W", "W" => "S" , "S" => "E" , "E" => "N" }
		@orientation = orientationLeft [ @orientation ]
	end
	#Metodo para dirección derecha
	def turn_right()
	orientationRight = { "N" => "E" , "W" => "N" , "S" => "W" , "E" => "S" } 	 	
		@orientation = orientationRight [ @orientation ]

	end

	#Metodos para movimiento
	def move_to_N()
		@x += 1 ;
	end	

	def move_to_E()
		@y += 1 ;
	end

	def move_to_S()
		@x -= 1 ;
	end

	def move_to_W()
		@y -= 1 ;
	end


end