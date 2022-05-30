trigger AccountAddressTrigger on Account (before insert, before update) {
    if(Trigger.isBefore && Trigger.isInsert){
        AccountAddressTriggerHandler.handleBeforeInsert(Trigger.New);
    }
    if(Trigger.isBefore && Trigger.isUpdate){
        AccountAddressTriggerHandler.handleBeforeUpdate(Trigger.New);        
    }
}