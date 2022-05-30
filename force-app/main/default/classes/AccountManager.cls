@RestResource(urlMapping='/Account/*/contacts')
global with sharing class AccountManager {
    @HttpGet
    global static Account getAccount() {
        RestRequest request = RestContext.request;
        String regex = '(?<=Account)(.*)(?=contacts)';
        Pattern myPattern = Pattern.compile(regex);
        System.debug('@@@ regex ==== '+regex);
        System.debug('@@@ requestURI ==== '+request.requestURI);
        Matcher myMatcher = myPattern.matcher(request.requestURI);
        System.debug('@@@ myMatcher ==== '+myMatcher);    
        System.debug('@@@ matches ==== '+myMatcher.matches());
        String accId = (myMatcher.group(0)).remove('//');
        System.debug('@@@ accId ==== '+accId);
        
        List<Account> listAcc = [SELECT Id, Name, (SELECT Id, Name FROM Contacts) FROM Account WHERE Id =: accId];
        return listAcc[0];
    }
}