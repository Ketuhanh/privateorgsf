public class AddPrimaryContact implements Queueable{
    public Contact inputContact;
    public String inputState;
        
    public AddPrimaryContact(Contact inputContact, String inputState){
        this.inputContact = inputContact;
        this.inputState = inputState;
    }
    
	public void execute(QueueableContext context) {
        List<Account> listAcc = [SELECT Id FROM Account WHERE BillingState =: inputState];
        List<Contact> listContactInsert = new List<Contact>();
        for(Account acc : listAcc){
            Contact newContact = inputContact.clone();
            newContact.AccountId = acc.Id;
            listContactInsert.add(newContact);
        }
        insert listContactInsert;
    }
}