@isTest public class AccountProcessorTest {
    @testSetup static void methodName() {
        List<Account> listAccount = new List<Account>{getAccount('KeTuHanh'), getAccount('KeVoToi')};
        Database.SaveResult[] srListAccount = Database.insert(listAccount, false);
        Integer count = 1;
        List<Contact> listContact = new List<Contact>();
        for(Database.SaveResult sr : srListAccount){
            listContact.add(getContact(sr.getId(), 'Test Contact '+count));
            count ++;
        }
        insert listContact;        
    }
    
	@isTest static void testCountContacts() {
        List<String> listAccId = new List<String>();
        for(Account acc : [
            SELECT Id
            FROM Account
        ]){
            listAccId.add(acc.Id);            
        }
        Test.startTest();
        AccountProcessor.countContacts(listAccId);
        Test.stopTest();
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
    public static Contact getContact(String accountId, String lastName){
        Contact ct = new Contact();
        ct.AccountId = accountId;
        ct.LastName = lastName;
        ct.Birthdate = Date.newInstance(1955, 01, 25);
        return ct;
    }
}