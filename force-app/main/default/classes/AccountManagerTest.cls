@isTest public class AccountManagerTest {

	@isTest static void testRestApex() {
        Account newAccount = getAccount('KeTuHanh');
        insert newAccount;
        RestRequest request = new RestRequest();
        request.requestUri = 'https://test.my.salesforce.com/services/apexrest/Account/' + newAccount.Id +'/contacts';
        request.httpMethod = 'GET';
        RestContext.request = request;
        Account acc = AccountManager.getAccount();
        System.assertEquals(newAccount.Id, acc.Id);
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