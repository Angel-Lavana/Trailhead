/*Descripción:	Crea un registro de cuenta y recupera el registro generado.
*execute:		ALR_Cuenta1_2.metodoCuenta1(); 
*execute:		ALR_Cuenta1_2 ejecuta = new ALR_Cuenta1_2();
*				ejecuta.ALR_Cuenta1_2();
*Query:			select Id, Name from Account where Name LIKE 'Test%'
*Query:			select Id, Name from Opportunity where Name LIKE 'Opty%'
*/ 
public class ALR_Cuenta1_2 {
    public List<Account> metodoCuenta1_2() {
        List<Account> cuentas = new List<Account>();
        for(integer contador = 0;contador<5;contador++){
            Account cuenta = new Account(Name = 'Test_Diferente'+contador);
            cuentas.add(cuenta);
        }
        insert cuentas;
        System.debug('Cuentas:::: '+cuentas);
        for(Account getCuenta: cuentas){
            System.debug('Id Cuenta:::: '+getCuenta.Id+' Nombre Cuenta '+getCuenta.Name);
        }
        return cuentas;
    }
}