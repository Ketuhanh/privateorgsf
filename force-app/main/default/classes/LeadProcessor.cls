public class LeadProcessor implements Database.Batchable<sObject>, Database.Stateful{
	public Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator(
            'SELECT Id FROM Lead'
        );
    }
    public void execute(Database.BatchableContext bc, List<Lead> listLead){
        for(Lead lead : listLead){
            lead.LeadSource = 'Dreamforce';
        }
        update listLead;
    }
    public void finish(Database.BatchableContext bc){
        // execute any post-processing operations
    }
}