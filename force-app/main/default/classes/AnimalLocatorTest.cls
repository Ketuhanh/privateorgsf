@isTest public class AnimalLocatorTest {
    
	@isTest static void testCallout() {
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock('herokuapp'));
        String result = AnimalLocator.getAnimalNameById(2);
        System.assertEquals('bear', result);
    }
}