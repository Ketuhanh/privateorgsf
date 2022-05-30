public class AccountHandler {
    public static Account insertNewAccount(String accName){
        try{
            Account newAcc = new Account();
            newAcc.Name = accName;
            insert newAcc;
            return newAcc;
        }catch(Exception ex){
            return null;
        }
    }
}