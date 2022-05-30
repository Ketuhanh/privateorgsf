public class RandomContactFactory {
    public static List <Contact> generateRandomContacts(Integer numberFirstName, String lastName){
        List<Contact> listResult = new List<Contact>();
        for(Integer index = 0 ; index < numberFirstName; index++){
            Contact newCt = new Contact(FirstName = 'Test'+index, Lastname = lastName);
            listResult.add(newCt);
        }
        return listResult;
    }
}