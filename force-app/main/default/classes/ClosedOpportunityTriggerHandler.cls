public class ClosedOpportunityTriggerHandler {
    public static void handleAfterInsert(Map<Id, Opportunity> mapNew){
        createTask(mapNew);
    }
    
    public static void handleAfterUpdate(Map<Id, Opportunity> mapNew){
        createTask(mapNew);        
    }
    
    public static void createTask(Map<Id, Opportunity> mapNew){
        List<Task> listInsert = new List<Task>();
        for(Id idKey : mapNew.keySet()){            
            if(((Opportunity)mapNew.get(idKey)).StageName == 'Closed Won'){
                Task tsk = new Task();
                tsk.Subject = 'Follow Up Test Task';
                tsk.WhatId = idKey;
                listInsert.add(tsk);
            }
        }
        insert listInsert;
    }
}