@isTest public class TestRestrictContactByName {
	@isTest static void testVerifyDate1() {
        Contact testContact = new Contact();
        testContact.LastName = 'INVALIDNAME';
		insert testContact;     
    }
}