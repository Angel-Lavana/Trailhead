/*Descripción:	Crea un registro de cuenta
*execute:		ALR_Cuenta1.metodoCuenta1(); 
*execute:		ALR_Cuenta1 ejecuta = new ALR_Cuenta1();
*				ejecuta.metodoCuenta1(6);
*Query:			select Id, Name from Account where Name LIKE 'Test%'
*/ 
public class ALR_Cuenta1 {
    public static void metodoCuenta1 () {          
            Account cuenta = new Account();
            cuenta.Name = 'Test';
            insert cuenta;
            System.debug('Cuenta:::: '+cuenta.Id+' '+cuenta.Name);
    }
}