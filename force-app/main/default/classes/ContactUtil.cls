public with sharing class ContactUtil {

    @AuraEnabled
    public static List<Contact> getContacts()
    {
        return [SELECT Id, FirstName, LastName FROM Contact LIMIT 10];
    }

}