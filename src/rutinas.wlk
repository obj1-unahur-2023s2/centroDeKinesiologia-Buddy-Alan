import aparatos.*
import pacientes.*
/*
 * ## 2. Rutinas.
A cada paciente se le asigna una serie de aparatos a ser usados en un orden determinado, cuando acude a al centro a realizar una sesión.
*  A esto lo llamaremos la _rutina_ asignada al cliente.  
Una rutina puede incluir que se utilice más de una vez el mismo aparato. Por ejemplo: una bicicleta, un minitramp, la misma bicicleta de nuevo, un magneto.  
Cada vez que un paciente concurre al centro, realiza la rutina que tiene asignada.  
A efectos de simplificar el programa, consideramos que cada paciente tiene "sus" aparatos asignados, y que cada vez que va al centro, usa los mismos. 
* En el ejemplo, aunque el centro tenga 20 bicicletas, el paciente va a usar siempre la misma. 

Requerimiento: 

- Saber si un paciente puede hacer la rutina asignada, para lo cual hay que verificar que pueda utilizar todos
los aparatos asignados al momento de iniciarla.
- Que el paciente realice una sesión completa: debe usar todos los aparatos incluidos en su rutina, en el orden indicado. 
 
 */
 
 class Rutina {
 	const rutina = []
 	method asignarAparatoARutina (aparatoAAgregarEnRutina)
 		{
 			rutina.add(aparatoAAgregarEnRutina)
 		} 
 	method removerAparatoDeRutina (aparatoARemover)
 		{
 			rutina.remove(aparatoARemover)
 		} 
 	method personaPuedeRealizarRutina (persona) = rutina.all({aparato => persona.pacientePuedeUsar(aparato)})
    method aparatosDeRutina() = rutina
 }