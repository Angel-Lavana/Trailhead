/*-----------------------------------------------------------------------
 * Clase que ejemplifica la Instanciaciación de una clase
 * Esta seria la clase nieta
 * Operaciones aritmeticas basicas
 *----------------------------------------------------------------------- 
*/ 
public class ALR_Instanciar_Clase {
    //Variables
    public static ALR_Clase_Hija_Datos miHerencia = new ALR_Clase_Hija_Datos(5,5,'SUMA');	//Instancia una clase que meneja herencias y se le envian parametros
    public static String resultadoHerenciaUno;

    //Constructor
    public ALR_Instanciar_Clase() {}
    
    public void llamarLaHerencia() {
        resultadoHerenciaUno = miHerencia.sumar();	//Entramos al método y dentro de aquella clase maneja herencias.
        System.debug('Respuesta al instancia la clase es: '+resultadoHerenciaUno); //El resultado pertenece a una herencia de segundo nivel
    }
}
/*Para ejecutar
ALR_Instanciar_Clase clase = new ALR_Instanciar_Clase();
clase.llamarLaHerencia();			
*	-->: Respuesta al instancia la clase es: La operación Aritmetica fue: SUMA
*
*/