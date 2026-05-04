/*Descripción:	Genera una cuenta, espera parametro (nombre de la Cuenta), regresa la cuenta creada.
*execute:		ALR_Cuenta0.metodoCuenta0(5); 
*execute:		ALR_Cuenta0 ejecuta = new ALR_Cuenta0();
*				ejecuta.metodoCuenta0('Test_Prueba');
*Query:			select Id, Name from Account where Name LIKE 'Test%'
*/ 
public class ALR_Cuenta0 {
	public static Account metodoCuenta0(String name) {
		Account a = new Account();
		a.Name = name;
		try
		{
			insert a;
            System.debug('Cuenta:::: '+a.Name);
		} 
		catch (Exception e) {
			return null;
		}
		return a;
	}
}//ESTE CAMBIO LO INGRESE DESDE GITHUB Y LO MIGRARE HASTA LA RAMA MAIN
