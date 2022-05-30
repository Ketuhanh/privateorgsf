public class AccountProcessor {
    @future
    public static void countContacts(List<String> accountIds){
        List<Account> listAcc = [SELECT Id, Number_Of_Contacts__c, (SELECT Id FROM Contacts)
                                        FROM Account
                                        WHERE Id IN : accountIds
                                    ];
        for(Account acc : listAcc){
			acc.Number_Of_Contacts__c = (acc.Contacts.size());
        }
        update listAcc;
    }
}