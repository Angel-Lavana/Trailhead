/*
 * Clase basica para ejemplificar la herencia de datos
 * Esta seria la clase Padre (Primer nivel)
 * Operaciones aritmeticas basicas
*/
public virtual class ALR_Operaciones {
    
	//Todas la variables aqui declaradas estan disponibles para todas las clases hijas
    public String OperacionSalida = 'La operación Aritmetica fue: ';
    
    //Constructor recibe parametro desde el constructor hijo
    public ALR_Operaciones(String entrada_UNO) {
        this.OperacionSalida = OperacionSalida + entrada_UNO;
    }
}