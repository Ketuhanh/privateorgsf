@isTest public class DailyLeadProcessorTest {
    
    public static final String CRON_EXP = '0 0 0 ? * * *';

    @testSetup static void testSetup() {
        List<Lead> listLead = new List<Lead>(); 
        for(Integer index = 1 ; index <= 200 ; index++){
            listLead.add(new Lead(LastName = ('Test_'+index), Company = 'Cong ty TNHH MTV'));
        }
        insert listLead;
    }
    
	@isTest static void testSchedulable() {
        Test.startTest();
        System.schedule('Process Leads', CRON_EXP, new DailyLeadProcessor());
        Test.stopTest();
        
        List<Lead> listUpdated = [SELECT Id FROM Lead WHERE LeadSource = 'Dreamforce'];
        System.assertEquals(200, listUpdated.size());
    }
}