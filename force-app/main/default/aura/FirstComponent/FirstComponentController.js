({
    doInit : function(component, event, helper) {
        var action = component.get("c.getPlannerScenario");        
        action.setParams({ contactId : component.get("v.recordId")});
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                component.set("v.scenario", response.getReturnValue());
            }
            else if (state === "ERROR") {
                var errors = response.getError();
                if (errors) {
                    if (errors[0] && errors[0].message) {
                        alert("Error: " + errors[0].message);
                    }
                }
            }
        });
        $A.enqueueAction(action);
    },
    handleSave : function(component, event, helper) {
        var action = component.get("c.savePlannerScenario");
        action.setParams({ psStr : JSON.stringify(component.get("v.scenario"))});
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                component.set("v.scenario", response.getReturnValue());
                helper.showToast(component, 'Success', 'Save Planner Scenario object successfully');
            }
            else if (state === "ERROR") {
                var errors = response.getError();
                if (errors) {
                    if (errors[0] && errors[0].message) {
                        helper.showToast(component, 'Failed', errors[0].message);
                    }
                }
            }
        });
        $A.enqueueAction(action);
        
    },
    handleOpenPopup : function(component, event, helper) {
        component.set("v.messageToChild", "Modals/Popup Box are used to display content in a layer above the app. This paradigm is used in cases such as the creation or editing of a record, as well as various types of messaging and wizards.");
        component.set("v.isOpenPopup", true);
    },
    handleEvent : function(component, event, helper) {
        var message = event.getParam("message");
        var isOpen = event.getParam("open");
        component.set("v.isOpenPopup", isOpen);
        alert("Message from User: " + message);
    },
})