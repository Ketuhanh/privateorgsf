public class ContactAndLeadSearch {
    public static List<List< sObject>> searchContactsAndLeads(String searchName){
        return [FIND :searchName IN ALL FIELDS RETURNING Contact(FirstName, LastName), Lead(FirstName, LastName)];
    }
}