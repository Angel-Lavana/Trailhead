/*Descripción:	Crea cuentas y oportunidades relacionadas masivamente.
*execute:		ALR_Cuenta4.metodoCuenta4(); 
*execute:		ALR_Cuenta4 ejecuta = new ALR_Cuenta4();
*				ejecuta.metodoCuenta4();
*Query:			select Id, Name from Account where Name LIKE 'Test%'
*Query:			select Id, Name from Opportunity where Name LIKE 'Opty%'
*/ 
public class ALR_Cuenta4 {
    public void metodoCuenta4(){
        List<Account> cuentas = new List<Account>();
        list<Opportunity> opty = new list<Opportunity>();
        
        for(integer contador = 0;contador<10;contador++) {
            Account cuenta = new Account();
            cuenta.Name = 'Test_'+contador;
            cuentas.add(cuenta);
        }
        insert cuentas;
        System.debug('Cuestas:::: '+cuentas);
        
        for(Account getCuentas: cuentas) {
            opty.add(new Opportunity(Name = 'Opty Cuenta_'+getCuentas.Name,
                                     StageName = 'Prospecting',
                                     CloseDate = date.valueOf('2021-03-16'),
                                     Amount = 2000,
                                     AccountId =getCuentas.Id));
        }
        insert opty;
        System.debug('Oportunidades:::: '+opty);
    }
}