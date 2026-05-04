/*Descripción:	Crea varias cuentas utilizando un for y recupera los datos de la lista creada
*execute:		ALR_Cuenta2.metodoCuenta2(5); 
*execute:		ALR_Cuenta2 ejecuta = new ALR_Cuenta2();
*				ejecuta.metodoCuenta2(6);
*Query:			select Id, Name from Account where Name LIKE 'Test%'
*/ 
public class ALR_Cuenta2 {
    public void metodoCuenta2(integer numero) {
        final List<Account> cuentas = new List<Account>();
        for(integer contador=0;contador<numero;contador++){
            Account nuevaCuenta = new Account();
            nuevaCuenta.Name = 'Test_'+contador;
            cuentas.add(nuevaCuenta);
            System.debug('--> '+nuevaCuenta);
        }
        insert cuentas;
        System.debug('Cuestas:::: '+cuentas);
        for(Account recupera:cuentas){
            System.debug('Id: '+recupera.Id+' Nombre: '+recupera.Name);
        }
    }
}