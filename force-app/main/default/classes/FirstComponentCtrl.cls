public with sharing class FirstComponentCtrl {
	
    @AuraEnabled
    public static Planner_Scenario__c getPlannerScenario(String contactId){
        List<Planner_Scenario__c> listPS = [SELECT Id, Salary__c, Working_hours__c,
                                    Is_change_salary__c, New_salary__c, Date_change_salary__c,
                                    Is_change_working_hours__c, New_working_hours__c, Date_change_working_hours__c
                                    FROM Planner_Scenario__c
                                    WHERE ContactId__c =: contactId];
        if(listPS.isEmpty()){
            throw new AuraHandledException('Have no any Planner_Scenario Object');
        }else{
            return listPS[0];
        }
    }
    
    
    @AuraEnabled
    public static Planner_Scenario__c savePlannerScenario(String psStr){
        try{
            Planner_Scenario__c psObject = (Planner_Scenario__c)JSON.deserialize(psStr, Planner_Scenario__c.class);
            update psObject;
            return psObject;
        }catch(Exception ex){
            throw new AuraHandledException('Cannot save: '+ex.getMessage());
        }
    }
}