import aparatos.*
import rutinas.*
class Paciente {
	var property edad = 0
	var fortaleza 
	var dolor 
	var rutina 
	method alterarNivelDeFortaleza(nuevoNivel) {
		fortaleza = 0.max(nuevoNivel)
	}
	method nivelDeFortaleza() = fortaleza
	method alterarNivelDeDolor(nuevoNivelDeDolor)
	{
		dolor = 0.max(nuevoNivelDeDolor)
	}
	method nivelDeDolor() = dolor 
	
	method pacientePuedeUsar(aparatoAUsar) =   aparatoAUsar.puedeUsarAparato(self)
	method usarAparato(aparatoAUsar) {
		if (self.pacientePuedeUsar(aparatoAUsar))
			{
				aparatoAUsar.personaUsarAparato(self)
			}
	}
	
	method asignarRutina(rutinaAsignada) {
		rutina = rutinaAsignada
		}
	method puedeRealizarLarutinaAsignada()	= rutina.personaPuedeRealizarRutina(self)
	 method realizarRutina ()
	 	{
	 		if(self.puedeRealizarLarutinaAsignada())
	 		{
	 		 rutina.aparatosDeRutina().forEach({aparatoDeRutina => aparatoDeRutina.personaUsarAparato(self) })
	 		 }
	 		 
	 	}
	
}
