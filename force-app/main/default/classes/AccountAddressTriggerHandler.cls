public class AccountAddressTriggerHandler {
    public static void handleBeforeInsert(List<Account> listNew){
        updateShippingPostalCode(listNew);
    }
    public static void handleBeforeUpdate(List<Account> listNew){
        updateShippingPostalCode(listNew);
    }
    public static void updateShippingPostalCode(List<Account> listNew){
        for(Account newAcc : listNew){
            if(newAcc.Match_Billing_Address__c){
                newAcc.ShippingPostalCode = newAcc.BillingPostalCode;
            }
        }        
    }
}