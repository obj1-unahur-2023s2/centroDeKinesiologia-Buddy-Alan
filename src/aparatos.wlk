
import pacientes.*

class Aparatos {
 method disminuyeNivelDeDolorDe_ (persona)
 method aumentaFortalezaMuscularDe_ (persona)

 method puedeUsarAparato (paciente) = true
 method personaUsarAparato(persona) {
			self.disminuyeNivelDeDolorDe_(persona)
			self.aumentaFortalezaMuscularDe_(persona)
		}
}

class Magneto inherits Aparatos 
	{
		override method disminuyeNivelDeDolorDe_ (persona)
		   {
				persona.alterarNivelDeDolor(persona.nivelDeDolor() * 0.9)
			}
				override method aumentaFortalezaMuscularDe_ (persona)
		   {
		   	
			}
		
	}
	
class Bicicleta inherits Aparatos
 	{
 		override method puedeUsarAparato(persona) = persona.edad() > 8
 		override method disminuyeNivelDeDolorDe_ (persona)
		   {
				persona.alterarNivelDeDolor(persona.nivelDeDolor() - 4)
			}
		override method aumentaFortalezaMuscularDe_ (persona)
		   {
		   	persona.alterarNivelDeFortaleza(persona.nivelDeFortaleza() + 3 )
			}
 	}
 
class Minitramp inherits Aparatos
 	{
 		override method puedeUsarAparato(persona) = persona.nivelDeDolor() < 20
 		override method disminuyeNivelDeDolorDe_ (persona)
		   {
		   	
			}
		override method aumentaFortalezaMuscularDe_ (persona)
		   {
		   	persona.alterarNivelDeFortaleza(persona.edad() *0.1 +  persona.nivelDeFortaleza() )
			}
 	}
 	