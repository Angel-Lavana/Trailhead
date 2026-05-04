/*Descripción:	Crea un registro de cuenta (Espera parametros) y recupera el registro generado.
*execute:		ALR_Cuenta1_1.metodoCuenta1(); 
*execute:		ALR_Cuenta1_1 ejecuta = new ALR_Cuenta1_1();
*				ejecuta.ALR_Cuenta1_1();
*Query:			select Id, Name from Account where Name LIKE 'Test%'
*Query:			select Id, Name from Opportunity where Name LIKE 'Opty%'
*/ 
public class ALR_Cuenta1_1 {
    public List<Account> metodoCuenta1_1(Decimal numero, string cadena) {
		Final List<Account> cuenta = new List<Account>();
        for(Decimal contador = 0; contador < numero; contador++) {
            cuenta.add(new Account(Name = cadena + contador));
        }
        insert cuenta;
        for(Account getCuenta: cuenta){
           System.debug('Nombre Cuenta:::: '+getCuenta.Name+' Id Cuenta:::: '+getCuenta.Id); 
        }
        System.debug('Todas las cuentas:::: '+cuenta);
        return cuenta;
    }
}