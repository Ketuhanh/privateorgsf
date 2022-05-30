@isTest public class LeadProcessorTest {
    @testSetup static void testSetup() {
        List<Lead> listInsert = new List<Lead>();
        for(Integer index = 1 ; index <= 200 ; index++){
            listInsert.add(new Lead(LastName = ('Tester '+index), Company = 'Cong ty TNHH Mot Thanh Vien'));
        }
        insert listInsert;
    }
	@isTest static void testBatch() {
        Test.startTest();
        LeadProcessor batch = new LeadProcessor();
        Id batchId = Database.executeBatch(batch);
        Test.stopTest();
    }
}