@isTest public class TestVerifyDate {
	@isTest static void testVerifyDate1() {
        Date checked = VerifyDate.CheckDates(System.today(),System.today().addDays(-1));
    }
	@isTest static void testVerifyDate2() {
        Date checked = VerifyDate.CheckDates(System.today().addDays(-1),System.today());
    }
}