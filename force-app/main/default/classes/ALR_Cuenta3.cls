/*Descripción:	Crea una cuenta y una oportunidad relacionada.
*execute:		ALR_Cuenta3.metodoCuenta2(); 
*execute:		ALR_Cuenta3 ejecuta = new ALR_Cuenta3();
*				ejecuta.metodoCuenta3();
*Query:			select Id, Name from Account where Name LIKE 'Test%'
*Query:			select Id, Name from Opportunity where Name LIKE 'Opty%'
*/ 
public class ALR_Cuenta3 {
    public void metodoCuenta3(){
        Account cuenta = new Account();
        cuenta.Name = 'Test Uno';
		insert cuenta;
        System.debug('Cuenta Id:::: '+cuenta.Id+' Nombre Cuenta:::: '+cuenta.Name);
        
        Opportunity opty = new Opportunity();
        opty.Name = 'Opty Cuenta';
        opty.StageName = 'Prospecting';
        opty.CloseDate = date.valueOf('2021-03-16');
        opty.Amount = 2000;
        opty.AccountId =cuenta.Id;
        insert opty;
        System.debug('Opty Id:::: '+opty.Id+' Opty Name:::: '+opty.Name);
    }	
}