({
    doInit : function(component, event, helper) {
        helper.getDataFromServer(component, "c.getContacts", function(response){
                if(response){
                    component.set("v.ListContact", response);
                }
            }
        );
    }
})