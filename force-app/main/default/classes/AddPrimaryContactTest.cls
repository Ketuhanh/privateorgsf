@isTest public class AddPrimaryContactTest {

    @testSetup static void testSetup() {
        List<Account> listAccount = new List<Account>();
		for(Integer index = 1 ; index <= 100 ; index++){
			Account newAcc = getAccount('Test_'+index);
            if(index <= 50){
                newAcc.BillingState = 'NY';
            }else{
                newAcc.BillingState = 'CA';                
            }
            listAccount.add(newAcc);
		}
        insert listAccount;
        
        Contact newContact = getContact('ByKeTuHanh');
        insert newContact;     
    }
    
	@isTest static void testQueueable() {
        List<Contact> listContact = [SELECT Id FROM Contact];
        Test.startTest();
        System.enqueueJob(new AddPrimaryContact(listContact[0], 'CA'));
        Test.stopTest();
    }
    
    public static Contact getContact(String lastName){
        Contact ct = new Contact();
        ct.FirstName = 'Test';
        ct.LastName = lastName;
        ct.Birthdate = Date.newInstance(1955, 01, 25);
        return ct;
    }
    
    public static Account getAccount(String name){
        Account newAcc = new Account();
        newAcc.Name = name;
        newAcc.ShippingStreet = 'Dien Bien Phu';
        newAcc.ShippingCity = 'HCM';
        newAcc.ShippingState = 'Go Vap';
        newAcc.ShippingPostalCode = '70000';
        newAcc.ShippingCountry = 'Viet Nam';
        return newAcc;
    }
}