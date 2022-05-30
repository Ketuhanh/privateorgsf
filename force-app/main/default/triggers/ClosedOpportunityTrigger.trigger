trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
	if(Trigger.isAfter && Trigger.isInsert){
        ClosedOpportunityTriggerHandler.handleAfterInsert(Trigger.newMap);
    }
    if(Trigger.isAfter && Trigger.isUpdate){
        ClosedOpportunityTriggerHandler.handleAfterUpdate(Trigger.newMap);        
    }
}